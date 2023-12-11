.class final Landroid/widget/RemoteViews$ResourceReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceReflectionAction"
.end annotation


# static fields
.field static final COLOR_RESOURCE:I = 0x2

.field static final DIMEN_RESOURCE:I = 0x1

.field static final STRING_RESOURCE:I = 0x3


# instance fields
.field private final mResId:I

.field private final mResourceType:I


# direct methods
.method constructor <init>(ILjava/lang/String;III)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameterType"    # I
    .param p4, "resourceType"    # I
    .param p5, "resId"    # I

    .line 2286
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(ILjava/lang/String;I)V

    .line 2287
    iput p4, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    .line 2288
    iput p5, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    .line 2289
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2292
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/os/Parcel;)V

    .line 2293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    .line 2294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    .line 2295
    return-void
.end method


# virtual methods
.method public getActionTag()I
    .registers 2

    .line 2358
    const/16 v0, 0x18

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

    .line 2307
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 2309
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2311
    .local v1, "resources":Landroid/content/res/Resources;
    :try_start_c
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_f8

    .line 2347
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    goto/16 :goto_d4

    .line 2336
    :pswitch_16
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->type:I

    packed-switch v2, :pswitch_data_102

    .line 2342
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    goto :goto_34

    .line 2338
    :pswitch_1e
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v2, :cond_23

    :goto_22
    goto :goto_28

    :cond_23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_22

    :goto_28
    return-object v0

    .line 2340
    :pswitch_29
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v2, :cond_2e

    :goto_2d
    goto :goto_33

    :cond_2e
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :goto_33
    return-object v0

    .line 2342
    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "string resources must be used as STRING or CHAR_SEQUENCE, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v0

    .line 2324
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_4e
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->type:I

    sparse-switch v2, :sswitch_data_10a

    .line 2331
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    goto :goto_7c

    .line 2328
    :sswitch_56
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v2, :cond_5b

    .line 2329
    :goto_5a
    goto :goto_66

    :cond_5b
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_5a

    .line 2328
    :goto_66
    return-object v0

    .line 2326
    :sswitch_67
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v0, :cond_6c

    :goto_6b
    goto :goto_77

    :cond_6c
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_6b

    :goto_77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2331
    :goto_7c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color resources must be used as INT or COLOR_STATE_LIST, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v0

    .line 2313
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_95
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->type:I

    packed-switch v0, :pswitch_data_114

    .line 2319
    :pswitch_9a
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    goto :goto_bb

    .line 2317
    :pswitch_9d
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v0, :cond_a3

    const/4 v0, 0x0

    goto :goto_a7

    :cond_a3
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_a7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 2315
    :pswitch_ac
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v0, :cond_b1

    :goto_b0
    goto :goto_b6

    :cond_b1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_b0

    :goto_b6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2319
    :goto_bb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dimen resources must be used as INT or FLOAT, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v0

    .line 2347
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :goto_d4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown resource type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v0
    :try_end_ee
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_c .. :try_end_ee} :catch_f5
    .catchall {:try_start_c .. :try_end_ee} :catchall_ee

    .line 2351
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_ee
    move-exception v0

    .line 2352
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2349
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_f5
    move-exception v0

    .line 2350
    .local v0, "ex":Landroid/widget/RemoteViews$ActionException;
    throw v0

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_95
        :pswitch_4e
        :pswitch_16
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x9
        :pswitch_29
        :pswitch_1e
    .end packed-switch

    :sswitch_data_10a
    .sparse-switch
        0x4 -> :sswitch_67
        0xf -> :sswitch_56
    .end sparse-switch

    :pswitch_data_114
    .packed-switch 0x4
        :pswitch_ac
        :pswitch_9a
        :pswitch_9d
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2299
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2300
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2301
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2302
    return-void
.end method
