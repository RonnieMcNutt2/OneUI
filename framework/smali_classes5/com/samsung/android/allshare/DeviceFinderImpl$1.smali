.class Lcom/samsung/android/allshare/DeviceFinderImpl$1;
.super Lcom/samsung/android/allshare/AllShareEventHandler;
.source "DeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/DeviceFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/allshare/DeviceFinderImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/allshare/DeviceFinderImpl;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/allshare/DeviceFinderImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 128
    iput-object p1, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$1;->this$0:Lcom/samsung/android/allshare/DeviceFinderImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .registers 14
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 133
    const-string v0, "[REMOVED] Exception"

    const-string v1, "DeviceFinderImpl(v1)"

    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getEventID()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "evt_id":Ljava/lang/String;
    const/4 v3, 0x0

    .line 138
    .local v3, "listener":Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    :try_start_9
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$1;->this$0:Lcom/samsung/android/allshare/DeviceFinderImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/DeviceFinderImpl;->-$$Nest$fgetmDiscoveryListenerMap(Lcom/samsung/android/allshare/DeviceFinderImpl;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_17

    move-object v3, v4

    .line 141
    goto :goto_1e

    .line 139
    :catch_17
    move-exception v4

    .line 140
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "mEventHandler.handleEventMessage : Exception"

    invoke-static {v1, v5, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 143
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1e
    invoke-static {}, Lcom/samsung/android/allshare/DeviceFinderImpl;->-$$Nest$sfgetmDeviceEventToDeviceTypeMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device$DeviceType;

    .line 144
    .local v4, "deviceType":Lcom/samsung/android/allshare/Device$DeviceType;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 145
    .local v5, "msgBundle":Landroid/os/Bundle;
    const-string v6, "BUNDLE_STRING_TYPE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "eventType":Ljava/lang/String;
    const-string v7, "BUNDLE_PARCELABLE_DEVICE"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 148
    .local v7, "deviceBundle":Landroid/os/Bundle;
    if-nez v7, :cond_43

    .line 149
    const-string/jumbo v0, "mEventHandler.handleEventMessage : deviceBundle is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 153
    :cond_43
    iget-object v8, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$1;->this$0:Lcom/samsung/android/allshare/DeviceFinderImpl;

    invoke-static {v8, v7, v4}, Lcom/samsung/android/allshare/DeviceFinderImpl;->-$$Nest$mgetDeviceFromMap(Lcom/samsung/android/allshare/DeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object v8

    .line 154
    .local v8, "device":Lcom/samsung/android/allshare/Device;
    if-nez v8, :cond_52

    .line 155
    const-string/jumbo v0, "mEventHandler.handleEventMessage : device is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 159
    :cond_52
    const-string v9, "ADDED"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    .line 161
    if-eqz v3, :cond_85

    .line 162
    :try_start_5c
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v3, v4, v8, v0}, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;->onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ADDED] "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_77} :catch_7f
    .catch Ljava/lang/Error; {:try_start_5c .. :try_end_77} :catch_78

    goto :goto_85

    .line 167
    :catch_78
    move-exception v0

    .line 168
    .local v0, "err":Ljava/lang/Error;
    const-string v9, "[ADDED] Error"

    invoke-static {v1, v9, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    .end local v0    # "err":Ljava/lang/Error;
    goto :goto_85

    .line 165
    :catch_7f
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "[ADDED] Exception"

    invoke-static {v1, v9, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_85
    :goto_85
    goto :goto_c3

    .line 170
    :cond_86
    const-string v9, "REMOVED"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c4

    .line 172
    :try_start_8e
    iget-object v9, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$1;->this$0:Lcom/samsung/android/allshare/DeviceFinderImpl;

    invoke-static {v9, v7, v4}, Lcom/samsung/android/allshare/DeviceFinderImpl;->-$$Nest$mremoveDeviceFromMap(Lcom/samsung/android/allshare/DeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V

    .line 173
    const-string v9, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v9

    .line 174
    .local v9, "error":Lcom/samsung/android/allshare/ERROR;
    if-eqz v3, :cond_c2

    .line 175
    invoke-interface {v3, v4, v8, v9}, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;->onDeviceRemoved(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V

    .line 176
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[REMOVED] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_b8} :catch_be
    .catch Ljava/lang/Error; {:try_start_8e .. :try_end_b8} :catch_b9

    goto :goto_c2

    .line 180
    .end local v9    # "error":Lcom/samsung/android/allshare/ERROR;
    :catch_b9
    move-exception v9

    .line 181
    .local v9, "err":Ljava/lang/Error;
    invoke-static {v1, v0, v9}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    .end local v9    # "err":Ljava/lang/Error;
    goto :goto_c2

    .line 178
    :catch_be
    move-exception v9

    .line 179
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v9}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 182
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_c2
    :goto_c2
    nop

    .line 187
    :goto_c3
    return-void

    .line 184
    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mEventHandler.handleEventMessage : eventType="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method
