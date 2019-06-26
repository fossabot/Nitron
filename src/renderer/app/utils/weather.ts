import Axios from 'axios';

import { WEATHER_API_KEY } from '../constants';
import { ForecastRequest, Forecast, OpenWeatherItem } from '../models';

export const getWeather = async ({ city, lang, units }: ForecastRequest) => {
  const url = `https://api.openweathermap.org/data/2.5/forecast?q=${city}&appid=${WEATHER_API_KEY}&lang=${lang}&units=${units}`;
  const { data } = await Axios.get(url);
  const list: OpenWeatherItem[] = data.list;
  const date = new Date();
}