.class public final Landroid/window/BackNavigationInfo$CustomAnimationInfo;
.super Ljava/lang/Object;
.source "BackNavigationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/BackNavigationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomAnimationInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackNavigationInfo$CustomAnimationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCustomBackground:I

.field private mCustomEnterAnim:I

.field private mCustomExitAnim:I

.field private final mPackageName:Ljava/lang/String;

.field private mWindowAnimations:I


# direct methods
.method static bridge synthetic -$$Nest$fputmCustomBackground(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)V
    .registers 2

    iput p1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomBackground:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCustomEnterAnim(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)V
    .registers 2

    iput p1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomEnterAnim:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCustomExitAnim(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)V
    .registers 2

    iput p1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomExitAnim:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWindowAnimations(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)V
    .registers 2

    iput p1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mWindowAnimations:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 337
    new-instance v0, Landroid/window/BackNavigationInfo$CustomAnimationInfo$1;

    invoke-direct {v0}, Landroid/window/BackNavigationInfo$CustomAnimationInfo$1;-><init>()V

    sput-object v0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mPackageName:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mWindowAnimations:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomEnterAnim:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomExitAnim:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomBackground:I

    .line 329
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/window/BackNavigationInfo$CustomAnimationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mPackageName:Ljava/lang/String;

    .line 307
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomBackground()I
    .registers 2

    .line 302
    iget v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomBackground:I

    return v0
.end method

.method public getCustomEnterAnim()I
    .registers 2

    .line 295
    iget v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomEnterAnim:I

    return v0
.end method

.method public getCustomExitAnim()I
    .registers 2

    .line 288
    iget v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomExitAnim:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 274
    iget-object v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .line 281
    iget v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mWindowAnimations:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomAnimationInfo, package name= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 316
    iget-object v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 317
    iget v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mWindowAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomEnterAnim:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomExitAnim:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->mCustomBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    return-void
.end method
