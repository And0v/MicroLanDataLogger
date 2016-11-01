/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   UdpNtpClient.cpp
 * Author: andov
 * 
 * Created on 1 ноября 2016 г., 20:57
 */

#include "UdpNtpClient.h"

UdpNtpClient::UdpNtpClient() {
    _udp.begin(LOCAL_PORT);
}

UdpNtpClient::~UdpNtpClient() {
}

// send an NTP request to the time server at the given address

void UdpNtpClient::sendNTPpacket(char* address) {
    // set all bytes in the buffer to 0
    memset(_packetBuffer, 0, NTP_PACKET_SIZE);
    // Initialize values needed to form NTP request
    // (see URL above for details on the packets)
    _packetBuffer[0] = 0b11100011; // LI, Version, Mode
    _packetBuffer[1] = 0; // Stratum, or type of clock
    _packetBuffer[2] = 6; // Polling Interval
    _packetBuffer[3] = 0xEC; // Peer Clock Precision
    // 8 bytes of zero for Root Delay & Root Dispersion
    _packetBuffer[12] = 49;
    _packetBuffer[13] = 0x4E;
    _packetBuffer[14] = 49;
    _packetBuffer[15] = 52;

    // all NTP fields have been given values, now
    // you can send a packet requesting a timestamp:
    _udp.beginPacket(address, 123); //NTP requests are to port 123
    _udp.write(_packetBuffer, NTP_PACKET_SIZE);
    _udp.endPacket();
}

unsigned long UdpNtpClient::sync() {
    unsigned long rst = 0;
    sendNTPpacket(TimeServer); // send an NTP packet to a time server

    // wait to see if a reply is available
    delay(1000);
    if (_udp.parsePacket()) {
        // We've received a packet, read the data from it
        _udp.read(_packetBuffer, NTP_PACKET_SIZE); // read the packet into the buffer

        // the timestamp starts at byte 40 of the received packet and is four bytes,
        // or two words, long. First, extract the two words:

        unsigned long highWord = word(packetBuffer[40], packetBuffer[41]);
        unsigned long lowWord = word(packetBuffer[42], packetBuffer[43]);
        // combine the four bytes (two words) into a long integer
        // this is NTP time (seconds since Jan 1 1900):
        unsigned long secsSince1900 = highWord << 16 | lowWord;
        Serial.print("Seconds since Jan 1 1900 = ");
        Serial.println(secsSince1900);

        // now convert NTP time into everyday time:
        Serial.print("Unix time = ");
        // Unix time starts on Jan 1 1970. In seconds, that's 2208988800:
        const unsigned long seventyYears = 2208988800UL;
        // subtract seventy years:
        unsigned long epoch = secsSince1900 - seventyYears;
        // print Unix time:
        Serial.println(epoch);
        rst = epoch;

        // print the hour, minute and second:
        Serial.print("The UTC time is "); // UTC is the time at Greenwich Meridian (GMT)
        Serial.print((epoch % 86400L) / 3600); // print the hour (86400 equals secs per day)
        Serial.print(':');
        if (((epoch % 3600) / 60) < 10) {
            // In the first 10 minutes of each hour, we'll want a leading '0'
            Serial.print('0');
        }
        Serial.print((epoch % 3600) / 60); // print the minute (3600 equals secs per minute)
        Serial.print(':');
        if ((epoch % 60) < 10) {
            // In the first 10 seconds of each minute, we'll want a leading '0'
            Serial.print('0');
        }
        Serial.println(epoch % 60); // print the second
    }
    Ethernet.maintain();
    return rst;
}
