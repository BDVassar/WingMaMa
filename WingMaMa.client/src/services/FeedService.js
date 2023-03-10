import { AppState } from "../AppState"
import { logger } from "../utils/Logger"
import { api } from "./AxiosService"

class FeedService {

  async createFeed(date) {
    const res = await api.post('api/feeding', date)
    logger.log(res)
    AppState.feeds.push(res.data)
  }





}

export const feedService = new FeedService()