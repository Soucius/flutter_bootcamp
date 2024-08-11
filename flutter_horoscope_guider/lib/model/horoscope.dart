class Horoscope {
  final String _horoscopeName;
  final String _horoscopeDate;
  final String _horoscopeDetail;
  final String _horoscopeThumbnail;
  final String _horoscopeImage;

  Horoscope(this._horoscopeName, this._horoscopeDate, this._horoscopeDetail,
      this._horoscopeThumbnail, this._horoscopeImage);

  @override
  String toString() {
    return "$_horoscopeName - $_horoscopeImage";
  }
}
