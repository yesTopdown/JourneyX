package Built;

import org.apache.commons.beanutils.BeanUtils;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

public class WebUilt {
    public static <T> T copyParamToBean(Map value, T Bean){
        try{
            BeanUtils.populate(Bean,value);
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return Bean;
    }

    public static int parseInt(String strInt,int defaultValue){
        try {
            return Integer.parseInt(strInt);
        }catch (Exception e){
   //         e.printStackTrace();
        }
            return defaultValue;
    }
}
