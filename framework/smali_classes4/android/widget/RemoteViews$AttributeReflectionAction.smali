.class final Landroid/widget/RemoteViews$AttributeReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttributeReflectionAction"
.end annotation


# static fields
.field static final COLOR_RESOURCE:I = 0x2

.field static final DIMEN_RESOURCE:I = 0x1

.field static final STRING_RESOURCE:I = 0x3


# instance fields
.field private final mAttrId:I

.field private final mResourceType:I


# direct methods
.method constructor <init>(ILjava/lang/String;III)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameterType"    # I
    .param p4, "resourceType"    # I
    .param p5, "attrId"    # I

    .line 2373
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(ILjava/lang/String;I)V

    .line 2374
    iput p4, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    .line 2375
    iput p5, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2376
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2379
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/os/Parcel;)V

    .line 2380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    .line 2381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2382
    return-void
.end method


# virtual methods
.method public getActionTag()I
    .registers 2

    .line 2453
    const/16 v0, 0x20

    return v0
.end method

.method protected getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 2393
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2396
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_e
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_3f

    .line 2397
    :cond_1a
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not defined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 2400
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :cond_3f
    :goto_3f
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    packed-switch v1, :pswitch_data_142

    .line 2439
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto/16 :goto_119

    .line 2426
    :pswitch_48
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    packed-switch v1, :pswitch_data_14c

    .line 2432
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_60

    .line 2428
    :pswitch_50
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_54
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_e .. :try_end_54} :catch_139
    .catchall {:try_start_e .. :try_end_54} :catchall_132

    .line 2447
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2428
    return-object v1

    .line 2430
    :pswitch_58
    :try_start_58
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_5c
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_58 .. :try_end_5c} :catch_139
    .catchall {:try_start_58 .. :try_end_5c} :catchall_132

    .line 2447
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2430
    return-object v1

    .line 2432
    :goto_60
    :try_start_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "string attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2433
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be used as STRING or CHAR_SEQUENCE, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 2414
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_8a
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    sparse-switch v1, :sswitch_data_154

    .line 2420
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_a6

    .line 2418
    :sswitch_92
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_96
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_60 .. :try_end_96} :catch_139
    .catchall {:try_start_60 .. :try_end_96} :catchall_132

    .line 2447
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2418
    return-object v1

    .line 2416
    :sswitch_9a
    :try_start_9a
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_a2
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_9a .. :try_end_a2} :catch_139
    .catchall {:try_start_9a .. :try_end_a2} :catchall_132

    .line 2447
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2416
    return-object v1

    .line 2420
    :goto_a6
    :try_start_a6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2421
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be used as INT or COLOR_STATE_LIST, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 2402
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_cf
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    packed-switch v1, :pswitch_data_15e

    .line 2408
    :pswitch_d4
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_f0

    .line 2406
    :pswitch_d7
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_e0
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_a6 .. :try_end_e0} :catch_139
    .catchall {:try_start_a6 .. :try_end_e0} :catchall_132

    .line 2447
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2406
    return-object v1

    .line 2404
    :pswitch_e4
    :try_start_e4
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_ec
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_e4 .. :try_end_ec} :catch_139
    .catchall {:try_start_e4 .. :try_end_ec} :catchall_132

    .line 2447
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2404
    return-object v1

    .line 2408
    :goto_f0
    :try_start_f0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dimen attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2409
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be used as INT or FLOAT, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 2439
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :goto_119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown resource type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1
    :try_end_132
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_f0 .. :try_end_132} :catch_139
    .catchall {:try_start_f0 .. :try_end_132} :catchall_132

    .line 2444
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_132
    move-exception v1

    .line 2445
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_133
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v2

    .line 2442
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catch_139
    move-exception v1

    .line 2443
    .local v1, "ex":Landroid/widget/RemoteViews$ActionException;
    nop

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1
    :try_end_13c
    .catchall {:try_start_133 .. :try_end_13c} :catchall_13c

    .line 2447
    .end local v1    # "ex":Landroid/widget/RemoteViews$ActionException;
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_13c
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2448
    throw v1

    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_8a
        :pswitch_48
    .end packed-switch

    :pswitch_data_14c
    .packed-switch 0x9
        :pswitch_58
        :pswitch_50
    .end packed-switch

    :sswitch_data_154
    .sparse-switch
        0x4 -> :sswitch_9a
        0xf -> :sswitch_92
    .end sparse-switch

    :pswitch_data_15e
    .packed-switch 0x4
        :pswitch_e4
        :pswitch_d4
        :pswitch_d7
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2386
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2387
    iget v0, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2388
    iget v0, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2389
    return-void
.end method
