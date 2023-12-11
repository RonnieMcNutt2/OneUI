.class public Lcom/samsung/android/allshare/WHADeviceInfo$WHAState;
.super Ljava/lang/Object;
.source "WHADeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/WHADeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WHAState"
.end annotation


# static fields
.field public static final CLIENT:I = 0x3

.field public static final CLIENT_CONNECTING:I = 0x2

.field public static final DISABLED:I = 0x0

.field public static final FREE:I = 0x1

.field public static final MASTER:I = 0x4

.field public static final NA:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
