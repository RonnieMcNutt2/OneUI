.class Landroid/security/identity/EntryNamespaceParcel$1;
.super Ljava/lang/Object;
.source "EntryNamespaceParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/EntryNamespaceParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/identity/EntryNamespaceParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/identity/EntryNamespaceParcel;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 13
    new-instance v0, Landroid/security/identity/EntryNamespaceParcel;

    invoke-direct {v0}, Landroid/security/identity/EntryNamespaceParcel;-><init>()V

    .line 14
    .local v0, "_aidl_out":Landroid/security/identity/EntryNamespaceParcel;
    invoke-virtual {v0, p1}, Landroid/security/identity/EntryNamespaceParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 15
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Landroid/security/identity/EntryNamespaceParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/identity/EntryNamespaceParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/security/identity/EntryNamespaceParcel;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 19
    new-array v0, p1, [Landroid/security/identity/EntryNamespaceParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Landroid/security/identity/EntryNamespaceParcel$1;->newArray(I)[Landroid/security/identity/EntryNamespaceParcel;

    move-result-object p1

    return-object p1
.end method
