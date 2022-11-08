package com.fourward.linkchart.persistence.mapper;

import com.fourward.linkchart.dto.UserInfoDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IUserInfoMapper {
    int insertUserInfo(UserInfoDTO pDTO) throws Exception;
    UserInfoDTO getUserIdExists(UserInfoDTO pDTO) throws Exception;
    UserInfoDTO getUserEmailExists(UserInfoDTO pDTO) throws Exception;
    UserInfoDTO getUserLoginCheck(UserInfoDTO pDTO) throws Exception;
}

