package com.cavitedev.scorecontacts.core

import com.cavitedev.score_contacts.core.StringManipulator.toJoinedPhoneString
import org.junit.Assert
import org.junit.Test

class StringManipulatorTest {
    
    
    
    @Test
    fun toJoinedPhoneStringReturnsSameWhenStringIsNumber(){
        val testStrings : List<String> = listOf("24252",
                "00000",
                "234242",
                "12134",
                "121341",
                "1234")

        testStrings.forEach {
            Assert.assertEquals(it, toJoinedPhoneString(it))
        }
    }

    @Test
    fun toJoinedPhoneStringReturnsPositiveNumberWhenStringIsNegativeNumber(){

            Assert.assertEquals("1", toJoinedPhoneString("-1"))
            Assert.assertEquals("0", toJoinedPhoneString("-0"))

    }

    @Test
    fun toJoinedPhoneStringWorksWithRandomStrings(){

        Assert.assertEquals("24214", toJoinedPhoneString("2-42-/14p"))
        Assert.assertEquals("21", toJoinedPhoneString("2/(&#@💩1"))
        Assert.assertEquals("12134", toJoinedPhoneString("/ (12134  b"))
        Assert.assertEquals("+00000000000", toJoinedPhoneString("+0 (000) 000 0000"))

    }
    
}