using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace examflight
{
    public class flight
    {
        int flightId;
        String source;
        String destination;
        int noOfSeats;
        double flightFare;
        public flight(int flightId, String source, String destination, int noOfSeats, double flightFare)
        {
            this.flightId = flightId;
            this.source = source;
            this.destination = destination;
            this.noOfSeats = noOfSeats;
            this.flightFare = flightFare;
        }
          public int Flightid
        {

            get
            {
                return flightId;
            }

        }
        public string Source
        {

            get
            {
                return source;
            }
        }
        public string Dest
        {

            get
            {
                return destination;
            }
        }
        public int Seat
        {

            get
            {
                return noOfSeats;
            }

        }
        public double Flightfare
        {

            get
            {
                return flightFare;
            }



        }


    }
}