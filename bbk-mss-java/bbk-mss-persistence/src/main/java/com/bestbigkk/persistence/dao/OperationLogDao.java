package com.bestbigkk.persistence.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.bestbigkk.persistence.entity.OperationLogPO;
import org.springframework.stereotype.Repository;

/**
 * <p>
 * 操作日志表 Mapper 接口
 * </p>

 */
@Repository
public interface OperationLogDao extends BaseMapper<OperationLogPO> {

    int countA();

}
