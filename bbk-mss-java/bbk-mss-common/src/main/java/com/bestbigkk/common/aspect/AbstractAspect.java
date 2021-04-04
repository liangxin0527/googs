package com.bestbigkk.common.aspect;

import org.aspectj.lang.JoinPoint;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;


public abstract class AbstractAspect {

    /**
     *
     * @param joinPoint
     * @param method
     * @param throwable
     * @return
     * @throws Throwable
     */
     public abstract Object doHandlerAspect(JoinPoint joinPoint, Method method, Throwable throwable) throws Throwable;

     /**
      * 执行切面实现类要执行的增强操作
      * @param joinPoint
      * @param method
      * @return
      * @throws Throwable
      */
     public abstract Object execute(JoinPoint joinPoint, Method method, Throwable throwable) throws Throwable;
}
