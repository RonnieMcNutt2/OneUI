.class public final Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;
.super Ljava/lang/Object;
.source "SemMediaPostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessingFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Type;,
        Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat$Key;
    }
.end annotation


# instance fields
.field private format:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetformat(Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    .line 209
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 211
    .local p1, "format":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    .line 213
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private isReserved(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_ce

    :cond_9
    goto/16 :goto_c0

    :sswitch_b
    const-string v0, "bufferSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto/16 :goto_c1

    :sswitch_16
    const-string v0, "bufferFormat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto/16 :goto_c1

    :sswitch_21
    const-string v0, "colorRange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    goto/16 :goto_c1

    :sswitch_2d
    const-string v0, "colorFormat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    goto/16 :goto_c1

    :sswitch_39
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto/16 :goto_c1

    :sswitch_45
    const-string v0, "fps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto/16 :goto_c1

    :sswitch_50
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto/16 :goto_c1

    :sswitch_5b
    const-string/jumbo v0, "stride"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_c1

    :sswitch_66
    const-string v0, "filterLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xf

    goto :goto_c1

    :sswitch_71
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_c1

    :sswitch_7c
    const-string/jumbo v0, "output-color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    goto :goto_c1

    :sswitch_88
    const-string/jumbo v0, "input-color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto :goto_c1

    :sswitch_94
    const-string v0, "colorStandard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xc

    goto :goto_c1

    :sswitch_9f
    const-string v0, "colorTransfer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xd

    goto :goto_c1

    :sswitch_aa
    const-string v0, "filterName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xe

    goto :goto_c1

    :sswitch_b5
    const-string/jumbo v0, "rotation-degree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto :goto_c1

    :goto_c0
    const/4 v0, -0x1

    :goto_c1
    packed-switch v0, :pswitch_data_110

    .line 323
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 321
    :pswitch_c9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_ce
    .sparse-switch
        -0x7c670005 -> :sswitch_b5
        -0x5c94c1dd -> :sswitch_aa
        -0x5a4dc792 -> :sswitch_9f
        -0x586960c0 -> :sswitch_94
        -0x5405e460 -> :sswitch_88
        -0x498e2869 -> :sswitch_7c
        -0x48c76ed9 -> :sswitch_71
        -0x361db514 -> :sswitch_66
        -0x352aa127 -> :sswitch_5b
        -0x42d1a3 -> :sswitch_50
        0x18ce9 -> :sswitch_45
        0x6be2dc6 -> :sswitch_39
        0x2415bd3a -> :sswitch_2d
        0x4c1f3f9a -> :sswitch_21
        0x6f304857 -> :sswitch_16
        0x719ec861 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
    .end packed-switch
.end method


# virtual methods
.method public getCustomKeyValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 345
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->isReserved(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    .line 348
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 346
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This key is already reserved."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 270
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->getValueTypeForKey(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    .line 273
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 271
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 297
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->getValueTypeForKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 300
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 298
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getValueTypeForKey(Ljava/lang/String;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_cc

    :cond_7
    goto/16 :goto_bd

    :sswitch_9
    const-string v0, "bufferSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_be

    :sswitch_14
    const-string v0, "bufferFormat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_be

    :sswitch_1f
    const-string v0, "colorRange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_be

    :sswitch_2b
    const-string v0, "colorFormat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_be

    :sswitch_37
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_be

    :sswitch_43
    const-string v0, "fps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_be

    :sswitch_4e
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_be

    :sswitch_58
    const-string/jumbo v0, "stride"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_be

    :sswitch_63
    const-string v0, "filterLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto :goto_be

    :sswitch_6e
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_be

    :sswitch_79
    const-string/jumbo v0, "output-color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_be

    :sswitch_85
    const-string/jumbo v0, "input-color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_be

    :sswitch_91
    const-string v0, "colorStandard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_be

    :sswitch_9c
    const-string v0, "colorTransfer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_be

    :sswitch_a7
    const-string v0, "filterName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto :goto_be

    :sswitch_b2
    const-string/jumbo v0, "rotation-degree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_be

    :goto_bd
    const/4 v0, -0x1

    :goto_be
    packed-switch v0, :pswitch_data_10e

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 242
    :pswitch_c7
    const/4 v0, 0x1

    .line 243
    .local v0, "type":I
    goto :goto_cb

    .line 239
    .end local v0    # "type":I
    :pswitch_c9
    const/4 v0, 0x0

    .line 240
    .restart local v0    # "type":I
    nop

    .line 247
    :goto_cb
    return v0

    :sswitch_data_cc
    .sparse-switch
        -0x7c670005 -> :sswitch_b2
        -0x5c94c1dd -> :sswitch_a7
        -0x5a4dc792 -> :sswitch_9c
        -0x586960c0 -> :sswitch_91
        -0x5405e460 -> :sswitch_85
        -0x498e2869 -> :sswitch_79
        -0x48c76ed9 -> :sswitch_6e
        -0x361db514 -> :sswitch_63
        -0x352aa127 -> :sswitch_58
        -0x42d1a3 -> :sswitch_4e
        0x18ce9 -> :sswitch_43
        0x6be2dc6 -> :sswitch_37
        0x2415bd3a -> :sswitch_2b
        0x4c1f3f9a -> :sswitch_1f
        0x6f304857 -> :sswitch_14
        0x719ec861 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c9
        :pswitch_c7
    .end packed-switch
.end method

.method public setCustomKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 332
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->isReserved(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    .line 335
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    return-void

    .line 333
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This key is already reserved."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInteger(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 257
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->getValueTypeForKey(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    .line 260
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void

    .line 258
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 283
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->getValueTypeForKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 286
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->format:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void

    .line 284
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
