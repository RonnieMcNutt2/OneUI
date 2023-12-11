.class public final Landroid/media/AudioMixMatchCriterionValue;
.super Ljava/lang/Object;
.source "AudioMixMatchCriterionValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioMixMatchCriterionValue$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioMixMatchCriterionValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final audioSessionId:I = 0x4

.field public static final pid:I = 0x5

.field public static final source:I = 0x1

.field public static final uid:I = 0x2

.field public static final usage:I = 0x0

.field public static final userId:I = 0x3


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 130
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue$1;

    invoke-direct {v0}, Landroid/media/AudioMixMatchCriterionValue$1;-><init>()V

    sput-object v0, Landroid/media/AudioMixMatchCriterionValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioMixMatchCriterionValue;->_tag:I

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/media/AudioMixMatchCriterionValue;->_tag:I

    .line 30
    iput-object p2, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Landroid/media/AudioMixMatchCriterionValue;->readFromParcel(Landroid/os/Parcel;)V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioMixMatchCriterionValue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioMixMatchCriterionValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 213
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 216
    return-void

    .line 214
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/AudioMixMatchCriterionValue;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/AudioMixMatchCriterionValue;->_tagString(I)Ljava/lang/String;

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

    .line 231
    iput p1, p0, Landroid/media/AudioMixMatchCriterionValue;->_tag:I

    .line 232
    iput-object p2, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    .line 233
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 219
    packed-switch p1, :pswitch_data_2e

    .line 227
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

    .line 225
    :pswitch_1c
    const-string v0, "pid"

    return-object v0

    .line 224
    :pswitch_1f
    const-string v0, "audioSessionId"

    return-object v0

    .line 223
    :pswitch_22
    const-string v0, "userId"

    return-object v0

    .line 222
    :pswitch_25
    const-string v0, "uid"

    return-object v0

    .line 221
    :pswitch_28
    const-string v0, "source"

    return-object v0

    .line 220
    :pswitch_2b
    const-string v0, "usage"

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static audioSessionId(I)Landroid/media/AudioMixMatchCriterionValue;
    .registers 4
    .param p0, "_value"    # I

    .line 102
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/AudioMixMatchCriterionValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static pid(I)Landroid/media/AudioMixMatchCriterionValue;
    .registers 4
    .param p0, "_value"    # I

    .line 118
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue;

    const/4 v1, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/AudioMixMatchCriterionValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static source(I)Landroid/media/AudioMixMatchCriterionValue;
    .registers 4
    .param p0, "_value"    # I

    .line 55
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/AudioMixMatchCriterionValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static uid(I)Landroid/media/AudioMixMatchCriterionValue;
    .registers 4
    .param p0, "_value"    # I

    .line 71
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/AudioMixMatchCriterionValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static usage(I)Landroid/media/AudioMixMatchCriterionValue;
    .registers 4
    .param p0, "_value"    # I

    .line 40
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/AudioMixMatchCriterionValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static userId(I)Landroid/media/AudioMixMatchCriterionValue;
    .registers 4
    .param p0, "_value"    # I

    .line 86
    new-instance v0, Landroid/media/AudioMixMatchCriterionValue;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/AudioMixMatchCriterionValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getTag()I

    .line 209
    return v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .line 106
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/AudioMixMatchCriterionValue;->_assertTag(I)V

    .line 107
    iget-object v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPid()I
    .registers 2

    .line 122
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/media/AudioMixMatchCriterionValue;->_assertTag(I)V

    .line 123
    iget-object v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSource()I
    .registers 2

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioMixMatchCriterionValue;->_assertTag(I)V

    .line 60
    iget-object v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()I
    .registers 2

    .line 34
    iget v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_tag:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 75
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/AudioMixMatchCriterionValue;->_assertTag(I)V

    .line 76
    iget-object v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUsage()I
    .registers 2

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioMixMatchCriterionValue;->_assertTag(I)V

    .line 45
    iget-object v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUserId()I
    .registers 2

    .line 90
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/AudioMixMatchCriterionValue;->_assertTag(I)V

    .line 91
    iget-object v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_68

    .line 201
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

    .line 197
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 199
    return-void

    .line 192
    .end local v1    # "_aidl_value":I
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 194
    return-void

    .line 187
    .end local v1    # "_aidl_value":I
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 189
    return-void

    .line 182
    .end local v1    # "_aidl_value":I
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 184
    return-void

    .line 177
    .end local v1    # "_aidl_value":I
    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 179
    return-void

    .line 172
    .end local v1    # "_aidl_value":I
    :pswitch_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 174
    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public setAudioSessionId(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 111
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 112
    return-void
.end method

.method public setPid(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 127
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 128
    return-void
.end method

.method public setSource(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 64
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method public setUid(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 80
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public setUsage(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 49
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public setUserId(I)V
    .registers 4
    .param p1, "_value"    # I

    .line 95
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioMixMatchCriterionValue;->_set(ILjava/lang/Object;)V

    .line 96
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 143
    iget v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Landroid/media/AudioMixMatchCriterionValue;->_tag:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_3b

    .line 161
    :pswitch_b
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getPid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    .line 158
    :pswitch_13
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getAudioSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    goto :goto_3b

    .line 155
    :pswitch_1b
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    goto :goto_3b

    .line 152
    :pswitch_23
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    goto :goto_3b

    .line 149
    :pswitch_2b
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getSource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    goto :goto_3b

    .line 146
    :pswitch_33
    invoke-virtual {p0}, Landroid/media/AudioMixMatchCriterionValue;->getUsage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    nop

    .line 164
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
