.class Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute$1;
.super Ljava/lang/Object;
.source "SemContextActivityNotificationExAttribute.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    invoke-direct {v0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;
    .registers 3
    .param p1, "size"    # I

    .line 52
    new-array v0, p1, [Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute$1;->newArray(I)[Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    move-result-object p1

    return-object p1
.end method
