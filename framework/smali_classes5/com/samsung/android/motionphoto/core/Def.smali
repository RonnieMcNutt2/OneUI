.class public Lcom/samsung/android/motionphoto/core/Def;
.super Ljava/lang/Object;
.source "Def.java"


# static fields
.field public static final MP_EVENT_ERROR:I = 0xbba

.field public static final MP_EVENT_INFO:I = 0xbb9

.field public static final MP_EVENT_START:I = 0xbb8

.field public static final MP_NATIVE_LIB:Ljava/lang/String; = "apex_jni.media.samsung"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMPCoreVersion()Ljava/lang/String;
    .registers 1

    .line 13
    const-string v0, "3.3.1"

    return-object v0
.end method
