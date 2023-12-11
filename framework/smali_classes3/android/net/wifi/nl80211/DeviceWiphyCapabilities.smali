.class public final Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
.super Ljava/lang/Object;
.source "DeviceWiphyCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DeviceWiphyCapabilities"


# instance fields
.field private m80211acSupported:Z

.field private m80211axSupported:Z

.field private m80211beSupported:Z

.field private m80211nSupported:Z

.field private mChannelWidth160MhzSupported:Z

.field private mChannelWidth320MhzSupported:Z

.field private mChannelWidth80p80MhzSupported:Z

.field private mMaxNumberRxSpatialStreams:I

.field private mMaxNumberTxSpatialStreams:I


# direct methods
.method static bridge synthetic -$$Nest$fputm80211acSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm80211axSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm80211beSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm80211nSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChannelWidth160MhzSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChannelWidth320MhzSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChannelWidth80p80MhzSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxNumberRxSpatialStreams(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxNumberTxSpatialStreams(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 284
    new-instance v0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    .line 56
    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    .line 57
    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    .line 58
    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    .line 59
    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    .line 60
    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    .line 61
    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    .line 63
    iput v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 215
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 216
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 217
    return v2

    .line 219
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 221
    .local v1, "capa":Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    iget v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    iget v4, v1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    if-ne v3, v4, :cond_44

    goto :goto_45

    :cond_44
    move v0, v2

    :goto_45
    return v0
.end method

.method public getMaxNumberRxSpatialStreams()I
    .registers 2

    .line 198
    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    return v0
.end method

.method public getMaxNumberTxSpatialStreams()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    return v0
.end method

.method public hashCode()I
    .registers 11

    .line 235
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    .line 236
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    .line 237
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 235
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isChannelWidthSupported(I)Z
    .registers 5
    .param p1, "chWidth"    # I

    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_4a

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isChannelWidthSupported called with invalid channel width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceWiphyCapabilities"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v0

    .line 138
    :pswitch_1f
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    return v0

    .line 136
    :pswitch_22
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    return v0

    .line 134
    :pswitch_25
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    return v0

    .line 132
    :pswitch_28
    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    if-nez v2, :cond_34

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    if-nez v2, :cond_34

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    if-eqz v2, :cond_35

    :cond_34
    move v0, v1

    :cond_35
    return v0

    .line 129
    :pswitch_36
    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    if-nez v2, :cond_46

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    if-nez v2, :cond_46

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    if-nez v2, :cond_46

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    if-eqz v2, :cond_47

    :cond_46
    move v0, v1

    :cond_47
    return v0

    .line 127
    :pswitch_48
    return v1

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_48
        :pswitch_36
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method public isWifiStandardSupported(I)Z
    .registers 4
    .param p1, "standard"    # I

    .line 74
    packed-switch p1, :pswitch_data_2c

    .line 86
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isWifiStandardSupported called with invalid standard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceWiphyCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    return v0

    .line 84
    :pswitch_1e
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    return v0

    .line 82
    :pswitch_21
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    return v0

    .line 80
    :pswitch_24
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    return v0

    .line 78
    :pswitch_27
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    return v0

    .line 76
    :pswitch_2a
    const/4 v0, 0x1

    return v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_3
        :pswitch_3
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_3
        :pswitch_1e
    .end packed-switch
.end method

.method public setChannelWidthSupported(IZ)V
    .registers 5
    .param p1, "chWidth"    # I
    .param p2, "support"    # Z

    .line 156
    packed-switch p1, :pswitch_data_28

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setChannelWidthSupported called with Invalid channel width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceWiphyCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 164
    :pswitch_1d
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    .line 165
    goto :goto_26

    .line 161
    :pswitch_20
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    .line 162
    goto :goto_26

    .line 158
    :pswitch_23
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    .line 159
    nop

    .line 170
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x3
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public setMaxNumberRxSpatialStreams(I)V
    .registers 2
    .param p1, "streams"    # I

    .line 209
    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    .line 210
    return-void
.end method

.method public setMaxNumberTxSpatialStreams(I)V
    .registers 2
    .param p1, "streams"    # I

    .line 189
    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    .line 190
    return-void
.end method

.method public setWifiStandardSupport(IZ)V
    .registers 5
    .param p1, "standard"    # I
    .param p2, "support"    # Z

    .line 99
    packed-switch p1, :pswitch_data_2a

    .line 113
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWifiStandardSupport called with invalid standard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceWiphyCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 110
    :pswitch_1d
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    .line 111
    goto :goto_29

    .line 107
    :pswitch_20
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    .line 108
    goto :goto_29

    .line 104
    :pswitch_23
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    .line 105
    goto :goto_29

    .line 101
    :pswitch_26
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    .line 102
    nop

    .line 115
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_3
        :pswitch_1d
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "m80211nSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    const-string v3, "Yes"

    const-string v4, "No"

    if-eqz v2, :cond_16

    move-object v2, v3

    goto :goto_17

    :cond_16
    move-object v2, v4

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string/jumbo v1, "m80211acSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    if-eqz v2, :cond_27

    move-object v2, v3

    goto :goto_28

    :cond_27
    move-object v2, v4

    :goto_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v1, "m80211axSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    if-eqz v2, :cond_38

    move-object v2, v3

    goto :goto_39

    :cond_38
    move-object v2, v4

    :goto_39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string/jumbo v1, "m80211beSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    if-eqz v2, :cond_49

    move-object v2, v3

    goto :goto_4a

    :cond_49
    move-object v2, v4

    :goto_4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string/jumbo v1, "mChannelWidth160MhzSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    if-eqz v2, :cond_5a

    move-object v2, v3

    goto :goto_5b

    :cond_5a
    move-object v2, v4

    :goto_5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string/jumbo v1, "mChannelWidth80p80MhzSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 274
    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    if-eqz v2, :cond_6b

    move-object v2, v3

    goto :goto_6c

    :cond_6b
    move-object v2, v4

    :goto_6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string/jumbo v1, "mChannelWidth320MhzSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    if-eqz v2, :cond_7b

    goto :goto_7c

    :cond_7b
    move-object v3, v4

    :goto_7c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string/jumbo v1, "mMaxNumberTxSpatialStreams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    const-string/jumbo v1, "mMaxNumberRxSpatialStreams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 253
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 254
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 255
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 256
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 257
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 259
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    return-void
.end method
