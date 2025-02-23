package com.crypto.service;

import com.crypto.model.CoinDTO;
import com.crypto.response.ApiResponse;

public interface ChatBotService {
    ApiResponse getCoinDetails(String coinName);

    CoinDTO getCoinByName(String coinName);

    String simpleChat(String prompt);
}
