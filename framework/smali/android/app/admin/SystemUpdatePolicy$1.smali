.class Landroid/app/admin/SystemUpdatePolicy$1;
.super Ljava/lang/Object;
.source "SystemUpdatePolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SystemUpdatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/SystemUpdatePolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SystemUpdatePolicy;
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 811
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/admin/SystemUpdatePolicy;-><init>(Landroid/app/admin/SystemUpdatePolicy-IA;)V

    .line 812
    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/admin/SystemUpdatePolicy;->-$$Nest$fputmPolicyType(Landroid/app/admin/SystemUpdatePolicy;I)V

    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/admin/SystemUpdatePolicy;->-$$Nest$fputmMaintenanceWindowStart(Landroid/app/admin/SystemUpdatePolicy;I)V

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/admin/SystemUpdatePolicy;->-$$Nest$fputmMaintenanceWindowEnd(Landroid/app/admin/SystemUpdatePolicy;I)V

    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 816
    .local v1, "freezeCount":I
    invoke-static {v0}, Landroid/app/admin/SystemUpdatePolicy;->-$$Nest$fgetmFreezePeriods(Landroid/app/admin/SystemUpdatePolicy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 817
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    if-ge v2, v1, :cond_50

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v3, v4}, Ljava/time/MonthDay;->of(II)Ljava/time/MonthDay;

    move-result-object v3

    .line 819
    .local v3, "start":Ljava/time/MonthDay;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v4, v5}, Ljava/time/MonthDay;->of(II)Ljava/time/MonthDay;

    move-result-object v4

    .line 820
    .local v4, "end":Ljava/time/MonthDay;
    invoke-static {v0}, Landroid/app/admin/SystemUpdatePolicy;->-$$Nest$fgetmFreezePeriods(Landroid/app/admin/SystemUpdatePolicy;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Landroid/app/admin/FreezePeriod;

    invoke-direct {v6, v3, v4}, Landroid/app/admin/FreezePeriod;-><init>(Ljava/time/MonthDay;Ljava/time/MonthDay;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    .end local v3    # "start":Ljava/time/MonthDay;
    .end local v4    # "end":Ljava/time/MonthDay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 822
    .end local v2    # "i":I
    :cond_50
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 807
    invoke-virtual {p0, p1}, Landroid/app/admin/SystemUpdatePolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/admin/SystemUpdatePolicy;
    .registers 3
    .param p1, "size"    # I

    .line 827
    new-array v0, p1, [Landroid/app/admin/SystemUpdatePolicy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 807
    invoke-virtual {p0, p1}, Landroid/app/admin/SystemUpdatePolicy$1;->newArray(I)[Landroid/app/admin/SystemUpdatePolicy;

    move-result-object p1

    return-object p1
.end method
