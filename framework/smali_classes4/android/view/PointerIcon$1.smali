.class Landroid/view/PointerIcon$1;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/PointerIcon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 883
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 884
    .local v0, "type":I
    if-nez v0, :cond_b

    .line 885
    invoke-static {}, Landroid/view/PointerIcon;->getNullIcon()Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    .line 888
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 889
    .local v1, "systemIconResourceId":I
    if-eqz v1, :cond_1b

    .line 890
    new-instance v2, Landroid/view/PointerIcon;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/view/PointerIcon;-><init>(ILandroid/view/PointerIcon-IA;)V

    .line 891
    .local v2, "icon":Landroid/view/PointerIcon;
    invoke-static {v2, v1}, Landroid/view/PointerIcon;->-$$Nest$fputmSystemIconResourceId(Landroid/view/PointerIcon;I)V

    .line 892
    return-object v2

    .line 895
    .end local v2    # "icon":Landroid/view/PointerIcon;
    :cond_1b
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 896
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 897
    .local v3, "hotSpotX":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 898
    .local v4, "hotSpotY":F
    const/16 v5, 0x4e20

    if-ne v0, v5, :cond_34

    .line 899
    invoke-static {v2, v3, v4}, Landroid/view/PointerIcon;->-$$Nest$smcreateSpenIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v5

    return-object v5

    .line 900
    :cond_34
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3c

    .line 901
    invoke-static {v2, v3, v4, v0}, Landroid/view/PointerIcon;->-$$Nest$smcreateDefaultIcon(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;

    move-result-object v5

    return-object v5

    .line 903
    :cond_3c
    invoke-static {v2, v3, v4}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v5
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_40} :catch_41

    return-object v5

    .line 904
    .end local v0    # "type":I
    .end local v1    # "systemIconResourceId":I
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "hotSpotX":F
    .end local v4    # "hotSpotY":F
    :catch_41
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 906
    invoke-static {}, Landroid/view/PointerIcon;->getNullIcon()Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 879
    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/PointerIcon;
    .registers 3
    .param p1, "size"    # I

    .line 912
    new-array v0, p1, [Landroid/view/PointerIcon;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 879
    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->newArray(I)[Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method
