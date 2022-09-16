class OnBoarding {
   final String imageUrl ;
   final String title ;
   final String detail ;

  OnBoarding(this.imageUrl, this.title, this.detail);
}

// make data listnya
 List<OnBoarding> dataOnboarding = [
   OnBoarding('assets/1.png', 'FIND FOOD YOU LOVE', 'Discover the best foods from over 1,000 restaurants') ,
   OnBoarding('assets/2.png', 'LIVE TRACKING', 'Real time tracking of your food on the app after order') ,
   OnBoarding('assets/3.png', 'FAST DELIVERY ', 'Fast delivery to your home, offive and whereever you are.') ,
 ] ;