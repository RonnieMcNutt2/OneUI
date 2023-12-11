.class public Lcom/samsung/android/speech/MMUIRecognizer;
.super Ljava/lang/Object;
.source "MMUIRecognizer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const-class v0, Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()I
    .registers 4

    .line 21
    const-string v0, "WARNING: Could not load libsasr-jni.so"

    const/4 v1, 0x0

    .line 23
    .local v1, "nResult":I
    :try_start_3
    sget-object v2, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Trying to load libsasr-jni.so"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string/jumbo v3, "sasr-jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    const-string v3, "Loading libsasr-jni.so done"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_15} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_25

    .line 29
    :catch_16
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v1, -0x1

    goto :goto_26

    .line 26
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v2

    .line 27
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v3, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v1, -0x1

    .line 32
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_25
    nop

    .line 33
    :goto_26
    return v1
.end method


# virtual methods
.method public native RECThread([S)I
.end method

.method public native ResetFx()I
.end method

.method public native SASRClose()I
.end method

.method public native SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I
.end method

.method public native SASRInit(Ljava/lang/String;)I
.end method

.method public native SASRLoadModel(Ljava/lang/String;)I
.end method

.method public native SASRReset()I
.end method

.method public native SaveChnUpdate(Ljava/lang/String;)I
.end method

.method public native SetSRLanguage(I)I
.end method
