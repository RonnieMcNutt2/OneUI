.class Lcom/samsung/android/allshare/ReceiverImpl$2;
.super Lcom/samsung/android/allshare/AllShareResponseHandler;
.source "ReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/allshare/ReceiverImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/allshare/ReceiverImpl;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ReceiverImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 117
    iput-object p1, p0, Lcom/samsung/android/allshare/ReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .registers 10
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 121
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ReceiverImpl"

    if-nez v0, :cond_f

    .line 123
    const-string/jumbo v2, "mResponseHandler bundle is NULL!"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void

    .line 127
    :cond_f
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "actionID":Ljava/lang/String;
    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v3

    .line 130
    .local v3, "err":Lcom/samsung/android/allshare/ERROR;
    const-string v4, "com.sec.android.allshare.action.ACTION_RECEIVER_RECEIVE_BY_ITEM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "BUNDLE_PARCELABLE_ITEM"

    if-eqz v4, :cond_4b

    .line 131
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 132
    .local v4, "itemBundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/samsung/android/allshare/ReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-virtual {v5, v4}, Lcom/samsung/android/allshare/ReceiverImpl;->getItem(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v5

    .line 134
    .local v5, "item":Lcom/samsung/android/allshare/Item;
    :try_start_31
    iget-object v6, p0, Lcom/samsung/android/allshare/ReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/ReceiverImpl;->-$$Nest$fgetmReceiverResponseListener(Lcom/samsung/android/allshare/ReceiverImpl;)Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;->onReceiveResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/ERROR;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_43
    .catch Ljava/lang/Error; {:try_start_31 .. :try_end_3a} :catch_3b

    goto :goto_4a

    .line 138
    :catch_3b
    move-exception v6

    .line 139
    .local v6, "e":Ljava/lang/Error;
    const-string/jumbo v7, "mResponseHandler ACTION_RECEIVER_RECEIVE_BY_ITEM Error"

    invoke-static {v1, v7, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_77

    .line 135
    .end local v6    # "e":Ljava/lang/Error;
    :catch_43
    move-exception v6

    .line 136
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "mResponseHandler ACTION_RECEIVER_RECEIVE_BY_ITEM Exception"

    invoke-static {v1, v7, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 141
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_4a
    goto :goto_77

    .line 143
    .end local v4    # "itemBundle":Landroid/os/Bundle;
    .end local v5    # "item":Lcom/samsung/android/allshare/Item;
    :cond_4b
    const-string v4, "com.sec.android.allshare.action.ACTION_RECEIVER_CANCEL_BY_ITEM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 144
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 145
    .restart local v4    # "itemBundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/samsung/android/allshare/ReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-virtual {v5, v4}, Lcom/samsung/android/allshare/ReceiverImpl;->getItem(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v5

    .line 147
    .restart local v5    # "item":Lcom/samsung/android/allshare/Item;
    :try_start_5d
    iget-object v6, p0, Lcom/samsung/android/allshare/ReceiverImpl$2;->this$0:Lcom/samsung/android/allshare/ReceiverImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/ReceiverImpl;->-$$Nest$fgetmReceiverResponseListener(Lcom/samsung/android/allshare/ReceiverImpl;)Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;->onCancelResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/ERROR;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_66} :catch_6f
    .catch Ljava/lang/Error; {:try_start_5d .. :try_end_66} :catch_67

    goto :goto_76

    .line 151
    :catch_67
    move-exception v6

    .line 152
    .local v6, "e":Ljava/lang/Error;
    const-string/jumbo v7, "mResponseHandler ACTION_RECEIVER_CANCEL_BY_ITEM Error"

    invoke-static {v1, v7, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_78

    .line 148
    .end local v6    # "e":Ljava/lang/Error;
    :catch_6f
    move-exception v6

    .line 149
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "mResponseHandler ACTION_RECEIVER_CANCEL_BY_ITEM Exception"

    invoke-static {v1, v7, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 154
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_76
    goto :goto_78

    .line 143
    .end local v4    # "itemBundle":Landroid/os/Bundle;
    .end local v5    # "item":Lcom/samsung/android/allshare/Item;
    :cond_77
    :goto_77
    nop

    .line 158
    :goto_78
    return-void
.end method
