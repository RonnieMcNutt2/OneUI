.class public Lcom/samsung/android/infoextraction/regex/SemEntityInfo;
.super Ljava/lang/Object;
.source "SemEntityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/infoextraction/regex/SemEntityInfo$Type;
    }
.end annotation


# instance fields
.field private dateInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dateMillisInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emailAddressInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeMillisInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    .line 102
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 304
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 307
    return-void
.end method

.method public deleteInfo(II)Z
    .registers 6
    .param p1, "index"    # I
    .param p2, "type"    # I

    .line 231
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_70

    .line 291
    return v1

    .line 281
    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_14

    .line 282
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 283
    return v0

    .line 285
    :cond_14
    return v1

    .line 273
    :pswitch_15
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_23

    .line 274
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 275
    return v0

    .line 277
    :cond_23
    return v1

    .line 265
    :pswitch_24
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_32

    .line 266
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    return v0

    .line 269
    :cond_32
    return v1

    .line 257
    :pswitch_33
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_41

    .line 258
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 259
    return v0

    .line 261
    :cond_41
    return v1

    .line 249
    :pswitch_42
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_50

    .line 250
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 251
    return v0

    .line 253
    :cond_50
    return v1

    .line 241
    :pswitch_51
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5f

    .line 242
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 243
    return v0

    .line 245
    :cond_5f
    return v1

    .line 233
    :pswitch_60
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_6e

    .line 234
    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 235
    return v0

    .line 237
    :cond_6e
    return v1

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_60
        :pswitch_51
        :pswitch_42
        :pswitch_33
        :pswitch_24
        :pswitch_15
        :pswitch_6
    .end packed-switch
.end method

.method public getCount(I)I
    .registers 3
    .param p1, "type"    # I

    .line 194
    packed-switch p1, :pswitch_data_36

    .line 219
    const/4 v0, 0x0

    return v0

    .line 214
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 211
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 208
    :pswitch_13
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 205
    :pswitch_1a
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 202
    :pswitch_21
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 199
    :pswitch_28
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 196
    :pswitch_2f
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_28
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_c
        :pswitch_5
    .end packed-switch
.end method

.method public getInfoList(I)Ljava/util/List;
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.0"
    .end annotation

    .line 115
    packed-switch p1, :pswitch_data_1e

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 135
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    return-object v0

    .line 132
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    return-object v0

    .line 129
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    return-object v0

    .line 126
    :pswitch_12
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    return-object v0

    .line 123
    :pswitch_15
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    return-object v0

    .line 120
    :pswitch_18
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    return-object v0

    .line 117
    :pswitch_1b
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public setInfo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 152
    packed-switch p2, :pswitch_data_30

    goto :goto_2e

    .line 178
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    goto :goto_2e

    .line 174
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    goto :goto_2e

    .line 170
    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    goto :goto_2e

    .line 166
    :pswitch_16
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    goto :goto_2e

    .line 162
    :pswitch_1c
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    goto :goto_2e

    .line 158
    :pswitch_22
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    goto :goto_2e

    .line 154
    :pswitch_28
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    nop

    .line 184
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_28
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method
