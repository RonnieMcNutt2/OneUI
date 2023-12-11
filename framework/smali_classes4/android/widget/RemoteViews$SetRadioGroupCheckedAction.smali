.class Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetRadioGroupCheckedAction"
.end annotation


# instance fields
.field private final mCheckedId:I


# direct methods
.method constructor <init>(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "checkedId"    # I

    .line 3823
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3824
    iput p1, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->viewId:I

    .line 3825
    iput p2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    .line 3826
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3828
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->viewId:I

    .line 3830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    .line 3831
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 12
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 3842
    iget v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3843
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 3845
    :cond_9
    instance-of v1, v0, Landroid/widget/RadioGroup;

    if-nez v1, :cond_2e

    .line 3846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->viewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it\'s not a RadioGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    return-void

    .line 3850
    :cond_2e
    move-object v1, v0

    check-cast v1, Landroid/widget/RadioGroup;

    .line 3853
    .local v1, "group":Landroid/widget/RadioGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    const v4, 0x10204d7

    if-ge v2, v3, :cond_57

    .line 3854
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3855
    .local v3, "child":Landroid/view/View;
    instance-of v5, v3, Landroid/widget/CompoundButton;

    if-nez v5, :cond_44

    goto :goto_54

    .line 3857
    :cond_44
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 3858
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v5, :cond_4d

    goto :goto_54

    .line 3861
    :cond_4d
    move-object v5, v3

    check-cast v5, Landroid/widget/CompoundButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3853
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "tag":Ljava/lang/Object;
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 3864
    .end local v2    # "i":I
    :cond_57
    iget v2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 3867
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5d
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_81

    .line 3868
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3869
    .restart local v3    # "child":Landroid/view/View;
    instance-of v5, v3, Landroid/widget/CompoundButton;

    if-nez v5, :cond_6c

    goto :goto_7e

    .line 3871
    :cond_6c
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 3872
    .local v5, "tag":Ljava/lang/Object;
    instance-of v6, v5, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v6, :cond_75

    goto :goto_7e

    .line 3874
    :cond_75
    move-object v6, v3

    check-cast v6, Landroid/widget/CompoundButton;

    move-object v7, v5

    check-cast v7, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3867
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "tag":Ljava/lang/Object;
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 3876
    .end local v2    # "i":I
    :cond_81
    return-void
.end method

.method public getActionTag()I
    .registers 2

    .line 3880
    const/16 v0, 0x1b

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3835
    iget v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3836
    iget v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3837
    return-void
.end method
