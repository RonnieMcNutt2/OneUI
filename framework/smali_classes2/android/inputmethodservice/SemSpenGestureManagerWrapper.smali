.class final Landroid/inputmethodservice/SemSpenGestureManagerWrapper;
.super Ljava/lang/Object;
.source "SemSpenGestureManagerWrapper.java"


# static fields
.field static mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Landroid/inputmethodservice/SemSpenGestureManagerWrapper;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static notifyKeyboardClosedForAGIF(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    sget-object v0, Landroid/inputmethodservice/SemSpenGestureManagerWrapper;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-nez v0, :cond_e

    .line 20
    const-string v0, "spengestureservice"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    sput-object v0, Landroid/inputmethodservice/SemSpenGestureManagerWrapper;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 24
    :cond_e
    const-string v0, "InputMethodService"

    const-string v1, "notifyKeyboardClosed called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v0, Landroid/inputmethodservice/SemSpenGestureManagerWrapper;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v0, :cond_1c

    .line 26
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->notifyKeyboardClosed()V

    .line 28
    :cond_1c
    return-void
.end method
