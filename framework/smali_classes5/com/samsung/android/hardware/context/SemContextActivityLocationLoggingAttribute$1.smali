.class Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute$1;
.super Ljava/lang/Object;
.source "SemContextActivityLocationLoggingAttribute.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    invoke-direct {v0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;
    .registers 3
    .param p1, "size"    # I

    .line 50
    new-array v0, p1, [Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute$1;->newArray(I)[Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    move-result-object p1

    return-object p1
.end method
