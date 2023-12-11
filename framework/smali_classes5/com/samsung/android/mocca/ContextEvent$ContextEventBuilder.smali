.class public Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;
.super Ljava/lang/Object;
.source "ContextEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mocca/ContextEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextEventBuilder"
.end annotation


# instance fields
.field private mData:[B

.field private mDeviceId:Ljava/lang/String;

.field private mTimestamp:J

.field private mType:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mTimestamp:J

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mDeviceId:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mType:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mData:[B

    .line 136
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mocca/ContextEvent;
    .registers 9

    .line 188
    iget-wide v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mType:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mData:[B

    if-nez v0, :cond_15

    goto :goto_25

    .line 193
    :cond_15
    new-instance v0, Lcom/samsung/android/mocca/ContextEvent;

    iget-wide v2, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mTimestamp:J

    iget-object v4, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mDeviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mType:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mData:[B

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/mocca/ContextEvent;-><init>(JLjava/lang/String;Ljava/lang/String;[BLcom/samsung/android/mocca/ContextEvent-IA;)V

    return-object v0

    .line 191
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public setData([B)Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;
    .registers 2
    .param p1, "data"    # [B

    .line 178
    iput-object p1, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mData:[B

    .line 179
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;
    .registers 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mDeviceId:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public setTimestamp(J)Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;
    .registers 3
    .param p1, "timestamp"    # J

    .line 145
    iput-wide p1, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mTimestamp:J

    .line 146
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mType:Ljava/lang/String;

    .line 168
    return-object p0
.end method
