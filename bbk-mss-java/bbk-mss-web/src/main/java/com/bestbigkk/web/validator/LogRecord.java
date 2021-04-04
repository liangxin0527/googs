package com.bestbigkk.web.validator;


import java.lang.annotation.*;

/**
* @describe: 使用注解，所以被修饰的方法都会被记录执行记录。
*/
@Target( { ElementType.METHOD } )
@Retention( RetentionPolicy.RUNTIME )
@Documented
public @interface LogRecord {

	/**
	 * 模块名称
	 */
	String modelName() ;

	/**
	 * 描述.
	 */
	String description() default "";

}
