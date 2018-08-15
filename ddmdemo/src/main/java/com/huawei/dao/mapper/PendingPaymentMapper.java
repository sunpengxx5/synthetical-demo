package com.huawei.dao.mapper;

import com.huawei.projo.PendingPayment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PendingPaymentMapper {
    /**
     * create by: sunpeng
     * description:
     * create time: 12:04 2018/8/13
     *
     * @return
     */
    int batchAdd(@Param("pendingPaymentList")List<PendingPayment> pendingPaymentList);

    /**
     * create by: sunpeng
     * description:
     12:04r2018/8/13: 12:04 2018/8/1
     *
     * @return a
     */
    List<PendingPayment> queryPendingPayment(long userId);

    /**
     * create by: sunpeng
     * description:
     * create time: 16:58 2018/8/14
     *
     * @return
     */
    int setPayedTrue(long pendingPaymentId);

    /**
     * create by: sunpeng
     * description:
     * create time: 17:00 2018/8/14
     *
     * @return
     */
    PendingPayment queryPendingPaymentById(long pendingPaymentId);
}