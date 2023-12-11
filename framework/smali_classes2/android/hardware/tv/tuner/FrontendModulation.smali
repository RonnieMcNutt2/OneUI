.class public final Landroid/hardware/tv/tuner/FrontendModulation;
.super Ljava/lang/Object;
.source "FrontendModulation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendModulation$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendModulation;",
            ">;"
        }
    .end annotation
.end field

.field public static final atsc:I = 0x6

.field public static final atsc3:I = 0x7

.field public static final dtmb:I = 0x8

.field public static final dvbc:I = 0x0

.field public static final dvbs:I = 0x1

.field public static final dvbt:I = 0x2

.field public static final isdbs:I = 0x3

.field public static final isdbs3:I = 0x4

.field public static final isdbt:I = 0x5


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 180
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendModulation$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendModulation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    .line 33
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulation;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendModulation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 287
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 290
    return-void

    .line 288
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendModulation;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 308
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    .line 309
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    .line 310
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 293
    packed-switch p1, :pswitch_data_38

    .line 304
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :pswitch_1c
    const-string v0, "dtmb"

    return-object v0

    .line 301
    :pswitch_1f
    const-string v0, "atsc3"

    return-object v0

    .line 300
    :pswitch_22
    const-string v0, "atsc"

    return-object v0

    .line 299
    :pswitch_25
    const-string v0, "isdbt"

    return-object v0

    .line 298
    :pswitch_28
    const-string v0, "isdbs3"

    return-object v0

    .line 297
    :pswitch_2b
    const-string v0, "isdbs"

    return-object v0

    .line 296
    :pswitch_2e
    const-string v0, "dvbt"

    return-object v0

    .line 295
    :pswitch_31
    const-string v0, "dvbs"

    return-object v0

    .line 294
    :pswitch_34
    const-string v0, "dvbc"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static atsc(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 133
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static atsc3(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 148
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dtmb(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 163
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/16 v1, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dvbc(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 43
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dvbs(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 58
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dvbt(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 73
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isdbs(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 88
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isdbs3(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 103
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isdbt(I)Landroid/hardware/tv/tuner/FrontendModulation;
    .registers 4
    .param p0, "_value"    # I

    .line 118
    new-instance v0, Landroid/hardware/tv/tuner/FrontendModulation;

    const/4 v1, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/tv/tuner/FrontendModulation;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getTag()I

    .line 283
    return v0
.end method

.method public getAtsc()I
    .registers 2

    .line 137
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 138
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAtsc3()I
    .registers 2

    .line 152
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 153
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDtmb()I
    .registers 2

    .line 167
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 168
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDvbc()I
    .registers 2

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 48
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDvbs()I
    .registers 2

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 63
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDvbt()I
    .registers 2

    .line 77
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 78
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIsdbs()I
    .registers 2

    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 93
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIsdbs3()I
    .registers 2

    .line 107
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 108
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIsdbt()I
    .registers 2

    .line 122
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendModulation;->_assertTag(I)V

    .line 123
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .registers 2

    .line 37
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_8c

    .line 275
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 272
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 273
    return-void

    .line 266
    .end local v1    # "_aidl_value":I
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 268
    return-void

    .line 261
    .end local v1    # "_aidl_value":I
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 263
    return-void

    .line 256
    .end local v1    # "_aidl_value":I
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 258
    return-void

    .line 251
    .end local v1    # "_aidl_value":I
    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 253
    return-void

    .line 246
    .end local v1    # "_aidl_value":I
    :pswitch_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 248
    return-void

    .line 241
    .end local v1    # "_aidl_value":I
    :pswitch_68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 243
    return-void

    .line 236
    .end local v1    # "_aidl_value":I
    :pswitch_74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 238
    return-void

    .line 231
    .end local v1    # "_aidl_value":I
    :pswitch_80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 233
    return-void

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_80
        :pswitch_74
        :pswitch_68
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public setAtsc(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 142
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 143
    return-void
.end method

.method public setAtsc3(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 157
    const/4 v0, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 158
    return-void
.end method

.method public setDtmb(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 172
    const/16 v0, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 173
    return-void
.end method

.method public setDvbc(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 52
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method public setDvbs(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 67
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public setDvbt(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 82
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public setIsdbs(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 97
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method public setIsdbs3(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 112
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method public setIsdbt(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 127
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendModulation;->_set(ILjava/lang/Object;)V

    .line 128
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 193
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendModulation;->_tag:I

    packed-switch v0, :pswitch_data_54

    goto :goto_53

    .line 220
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDtmb()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    .line 217
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getAtsc3()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    goto :goto_53

    .line 214
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getAtsc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    goto :goto_53

    .line 211
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getIsdbt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    goto :goto_53

    .line 208
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getIsdbs3()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    goto :goto_53

    .line 205
    :pswitch_33
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getIsdbs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    goto :goto_53

    .line 202
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDvbt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    goto :goto_53

    .line 199
    :pswitch_43
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDvbs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    goto :goto_53

    .line 196
    :pswitch_4b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendModulation;->getDvbc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    nop

    .line 223
    :goto_53
    return-void

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
