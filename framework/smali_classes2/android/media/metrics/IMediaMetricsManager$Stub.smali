.class public abstract Landroid/media/metrics/IMediaMetricsManager$Stub;
.super Landroid/os/Binder;
.source "IMediaMetricsManager.java"

# interfaces
.implements Landroid/media/metrics/IMediaMetricsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/IMediaMetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/IMediaMetricsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getBundleSessionId:I = 0xa

.field static final TRANSACTION_getEditingSessionId:I = 0x9

.field static final TRANSACTION_getPlaybackSessionId:I = 0x2

.field static final TRANSACTION_getRecordingSessionId:I = 0x3

.field static final TRANSACTION_getTranscodingSessionId:I = 0x8

.field static final TRANSACTION_releaseSessionId:I = 0xc

.field static final TRANSACTION_reportBundleMetrics:I = 0xb

.field static final TRANSACTION_reportNetworkEvent:I = 0x4

.field static final TRANSACTION_reportPlaybackErrorEvent:I = 0x5

.field static final TRANSACTION_reportPlaybackMetrics:I = 0x1

.field static final TRANSACTION_reportPlaybackStateEvent:I = 0x6

.field static final TRANSACTION_reportTrackChangeEvent:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.media.metrics.IMediaMetricsManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/metrics/IMediaMetricsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/metrics/IMediaMetricsManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    const-string v0, "android.media.metrics.IMediaMetricsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/metrics/IMediaMetricsManager;

    if-eqz v1, :cond_14

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/media/metrics/IMediaMetricsManager;

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Landroid/media/metrics/IMediaMetricsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/metrics/IMediaMetricsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 90
    packed-switch p0, :pswitch_data_2a

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 138
    :pswitch_5
    const-string v0, "releaseSessionId"

    return-object v0

    .line 134
    :pswitch_8
    const-string v0, "reportBundleMetrics"

    return-object v0

    .line 130
    :pswitch_b
    const-string v0, "getBundleSessionId"

    return-object v0

    .line 126
    :pswitch_e
    const-string v0, "getEditingSessionId"

    return-object v0

    .line 122
    :pswitch_11
    const-string v0, "getTranscodingSessionId"

    return-object v0

    .line 118
    :pswitch_14
    const-string v0, "reportTrackChangeEvent"

    return-object v0

    .line 114
    :pswitch_17
    const-string v0, "reportPlaybackStateEvent"

    return-object v0

    .line 110
    :pswitch_1a
    const-string v0, "reportPlaybackErrorEvent"

    return-object v0

    .line 106
    :pswitch_1d
    const-string v0, "reportNetworkEvent"

    return-object v0

    .line 102
    :pswitch_20
    const-string v0, "getRecordingSessionId"

    return-object v0

    .line 98
    :pswitch_23
    const-string v0, "getPlaybackSessionId"

    return-object v0

    .line 94
    :pswitch_26
    const-string v0, "reportPlaybackMetrics"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 552
    const/16 v0, 0xb

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 149
    invoke-static {p1}, Landroid/media/metrics/IMediaMetricsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    const-string v0, "android.media.metrics.IMediaMetricsManager"

    .line 154
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 155
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    :cond_d
    packed-switch p1, :pswitch_data_12c

    .line 165
    packed-switch p1, :pswitch_data_132

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 161
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    return v1

    .line 298
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 301
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2, v3}, Landroid/media/metrics/IMediaMetricsManager$Stub;->releaseSessionId(Ljava/lang/String;I)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto/16 :goto_12a

    .line 285
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 289
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 290
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto/16 :goto_12a

    .line 275
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    .end local v4    # "_arg2":I
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2}, Landroid/media/metrics/IMediaMetricsManager$Stub;->getBundleSessionId(I)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    goto/16 :goto_12a

    .line 265
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 266
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2}, Landroid/media/metrics/IMediaMetricsManager$Stub;->getEditingSessionId(I)Ljava/lang/String;

    move-result-object v3

    .line 268
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    goto/16 :goto_12a

    .line 255
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 256
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2}, Landroid/media/metrics/IMediaMetricsManager$Stub;->getTranscodingSessionId(I)Ljava/lang/String;

    move-result-object v3

    .line 258
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    goto/16 :goto_12a

    .line 242
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/metrics/TrackChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/metrics/TrackChangeEvent;

    .line 246
    .local v3, "_arg1":Landroid/media/metrics/TrackChangeEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 247
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto/16 :goto_12a

    .line 229
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/metrics/TrackChangeEvent;
    .end local v4    # "_arg2":I
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/metrics/PlaybackStateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/metrics/PlaybackStateEvent;

    .line 233
    .local v3, "_arg1":Landroid/media/metrics/PlaybackStateEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 234
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_12a

    .line 216
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/metrics/PlaybackStateEvent;
    .end local v4    # "_arg2":I
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/metrics/PlaybackErrorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/metrics/PlaybackErrorEvent;

    .line 220
    .local v3, "_arg1":Landroid/media/metrics/PlaybackErrorEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 221
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    goto :goto_12a

    .line 203
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/metrics/PlaybackErrorEvent;
    .end local v4    # "_arg2":I
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/metrics/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/metrics/NetworkEvent;

    .line 207
    .local v3, "_arg1":Landroid/media/metrics/NetworkEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto :goto_12a

    .line 193
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/metrics/NetworkEvent;
    .end local v4    # "_arg2":I
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2}, Landroid/media/metrics/IMediaMetricsManager$Stub;->getRecordingSessionId(I)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    goto :goto_12a

    .line 183
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/media/metrics/IMediaMetricsManager$Stub;->getPlaybackSessionId(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    goto :goto_12a

    .line 170
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/metrics/PlaybackMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/metrics/PlaybackMetrics;

    .line 174
    .local v3, "_arg1":Landroid/media/metrics/PlaybackMetrics;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 175
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/metrics/IMediaMetricsManager$Stub;->reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    nop

    .line 311
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/metrics/PlaybackMetrics;
    .end local v4    # "_arg2":I
    :goto_12a
    return v1

    nop

    :pswitch_data_12c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_110
        :pswitch_fe
        :pswitch_ec
        :pswitch_d2
        :pswitch_b8
        :pswitch_9e
        :pswitch_83
        :pswitch_70
        :pswitch_5d
        :pswitch_4a
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
