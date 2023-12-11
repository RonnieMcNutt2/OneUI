.class public interface abstract Landroid/os/Parcelable;
.super Ljava/lang/Object;
.source "Parcelable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Parcelable$ClassLoaderCreator;,
        Landroid/os/Parcelable$Creator;,
        Landroid/os/Parcelable$Stability;,
        Landroid/os/Parcelable$ContentsFlags;,
        Landroid/os/Parcelable$WriteFlags;
    }
.end annotation


# static fields
.field public static final CONTENTS_FILE_DESCRIPTOR:I = 0x1

.field public static final PARCELABLE_ELIDE_DUPLICATES:I = 0x2

.field public static final PARCELABLE_STABILITY_LOCAL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final PARCELABLE_STABILITY_VINTF:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final PARCELABLE_WRITE_RETURN_VALUE:I = 0x1


# virtual methods
.method public abstract describeContents()I
.end method

.method public getStability()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method
