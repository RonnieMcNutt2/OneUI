.class Landroid/widget/Toast$TN$1;
.super Landroid/os/Handler;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toast$TN;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Binder;Ljava/util/List;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toast$TN;


# direct methods
.method constructor <init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/widget/Toast$TN;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .line 935
    iput-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 938
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_38

    goto :goto_36

    .line 952
    :pswitch_7
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 955
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iput-object v1, v0, Landroid/widget/Toast$TN;->mNextView:Ljava/lang/ref/WeakReference;

    .line 957
    :try_start_10
    invoke-static {}, Landroid/widget/Toast;->-$$Nest$smgetService()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iget-object v1, v1, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iget-object v2, v2, Landroid/widget/Toast$TN;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_20

    .line 959
    goto :goto_36

    .line 958
    :catch_20
    move-exception v0

    goto :goto_36

    .line 945
    :pswitch_22
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 948
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iput-object v1, v0, Landroid/widget/Toast$TN;->mNextView:Ljava/lang/ref/WeakReference;

    .line 949
    goto :goto_36

    .line 940
    :pswitch_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 941
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {v1, v0}, Landroid/widget/Toast$TN;->handleShow(Landroid/os/IBinder;)V

    .line 942
    nop

    .line 963
    .end local v0    # "token":Landroid/os/IBinder;
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_22
        :pswitch_7
    .end packed-switch
.end method
