.class Landroid/telephony/TelephonyManager$2;
.super Ljava/lang/Object;
.source "TelephonyManager.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->uploadCallComposerPicture(Ljava/nio/file/Path;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/os/ParcelUuid;",
        "Landroid/telephony/TelephonyManager$CallComposerException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyManager;

.field final synthetic val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic val$fileStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager;Ljava/io/InputStream;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5610
    iput-object p1, p0, Landroid/telephony/TelephonyManager$2;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$2;->val$fileStream:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/telephony/TelephonyManager$CallComposerException;)V
    .registers 5
    .param p1, "error"    # Landroid/telephony/TelephonyManager$CallComposerException;

    .line 5626
    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$fileStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 5631
    goto :goto_e

    .line 5627
    :catch_6
    move-exception v0

    .line 5629
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error closing file input stream when uploading call composer pic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 5633
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .registers 2

    .line 5610
    check-cast p1, Landroid/telephony/TelephonyManager$CallComposerException;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$2;->onError(Landroid/telephony/TelephonyManager$CallComposerException;)V

    return-void
.end method

.method public onResult(Landroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "result"    # Landroid/os/ParcelUuid;

    .line 5614
    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$fileStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 5619
    goto :goto_e

    .line 5615
    :catch_6
    move-exception v0

    .line 5617
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error closing file input stream when uploading call composer pic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5620
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 5621
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .registers 2

    .line 5610
    check-cast p1, Landroid/os/ParcelUuid;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$2;->onResult(Landroid/os/ParcelUuid;)V

    return-void
.end method
