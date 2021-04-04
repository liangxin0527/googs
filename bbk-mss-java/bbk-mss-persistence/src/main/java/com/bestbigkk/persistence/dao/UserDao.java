package com.bestbigkk.persistence.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.bestbigkk.persistence.entity.UserPO;
import org.springframework.stereotype.Repository;

/**
 * <p>
 *  Mapper 接口
 * </p>
 */
@Repository
public interface UserDao extends BaseMapper<UserPO> {

}
