.class public Lcom/android/server/vcn/repackaged/util/OneWayBoolean;
.super Ljava/lang/Object;
.source "OneWayBoolean.java"


# instance fields
.field private mValue:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vcn/repackaged/util/OneWayBoolean;->mValue:Z

    return-void
.end method


# virtual methods
.method public getValue()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/android/server/vcn/repackaged/util/OneWayBoolean;->mValue:Z

    return v0
.end method

.method public setTrue()V
    .registers 2

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vcn/repackaged/util/OneWayBoolean;->mValue:Z

    .line 38
    return-void
.end method
