.class Landroid/view/accessibility/AccessibilityNodeInfo$1;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 6693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 6696
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    .line 6697
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$minitFromParcel(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V

    .line 6698
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 6693
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3
    .param p1, "size"    # I

    .line 6703
    new-array v0, p1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 6693
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$1;->newArray(I)[Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method
