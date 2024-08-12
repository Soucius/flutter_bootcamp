class Horoscope {
  final String _horoscopeName;
  final String _horoscopeDate;
  final String _horoscopeDetail;
  final String _horoscopeThumbnail;
  final String _horoscopeImage;

  get horoscopeName => this._horoscopeName;
  get horoscopeDate => this._horoscopeDate;
  get horoscopeDetail => this._horoscopeDetail;
  get horoscopeThumbnail => this._horoscopeThumbnail;
  get horoscopeImage => this._horoscopeImage;

  Horoscope(this._horoscopeName, this._horoscopeDate, this._horoscopeDetail,
      this._horoscopeThumbnail, this._horoscopeImage);

  @override
  String toString() {
    return "$_horoscopeName - $_horoscopeImage";
  }
}
