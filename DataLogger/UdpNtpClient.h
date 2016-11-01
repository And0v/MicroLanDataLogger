/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   UdpNtpClient.h
 * Author: andov
 *
 * Created on 1 ноября 2016 г., 20:57
 */

#ifndef UDPNTPCLIENT_H
#define UDPNTPCLIENT_H


#include <Ethernet.h>
#include <EthernetUdp.h>

class UdpNtpClient {
    const unsigned int LOCAL_PORT = 8888; // local port to listen for UDP packets
    const char TimeServer[] = "time.nist.gov"; // time.nist.gov NTP server
    const int NTP_PACKET_SIZE = 48; // NTP time stamp is in the first 48 bytes of the message
    byte _packetBuffer[ NTP_PACKET_SIZE]; //buffer to hold incoming and outgoing packets
    // A UDP instance to let us send and receive packets over UDP
    EthernetUDP _udp;
public:
    UdpNtpClient();
    virtual ~UdpNtpClient();
    
    unsigned long sync();
private:
    sendNTPpacket(char* timeServer); // send an NTP packet to a time server

};

#endif /* UDPNTPCLIENT_H */

