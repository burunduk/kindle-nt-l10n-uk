package com.amazon.ebook.framework.impl.resources;

import java.text.SimpleDateFormat;
import java.util.ListResourceBundle;

public class StatusBarResources_uk_UA extends ListResourceBundle
{

    public StatusBarResources_uk_UA()
    {
    }

    protected Object[][] getContents()
    {
        return f;
    }

    static final Object f[][] = {
        {
            "clock.date.format", new SimpleDateFormat("HH:mm")
        }
    };

}
