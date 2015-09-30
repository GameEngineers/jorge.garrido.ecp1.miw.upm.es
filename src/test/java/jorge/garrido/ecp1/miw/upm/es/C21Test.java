package jorge.garrido.ecp1.miw.upm.es;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class C21Test {

    private C21 c;
    
    @Before
    public void before(){
        c = new C21();
    }
    
    
    @Test
    public void testM1(){
        assertEquals("m1", c.m1());
    }
    
    @Test
    public void testM2(){
        assertEquals("m2", c.m2());
    }
    
    @Test
    public void testM3(){
        assertEquals("m3", c.m3());
    }
}
