.class public Lcom/samsung/android/infoextraction/KerykeionRequest;
.super Ljava/lang/Object;
.source "KerykeionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/infoextraction/KerykeionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHermesObject:Lcom/samsung/android/infoextraction/HermesObject;

.field private mPrimitive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private nPatternType:I

.field private nType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 112
    new-instance v0, Lcom/samsung/android/infoextraction/KerykeionRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/KerykeionRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/infoextraction/KerykeionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    .line 15
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nPatternType:I

    .line 16
    iput-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mHermesObject:Lcom/samsung/android/infoextraction/HermesObject;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getHermesObject()Lcom/samsung/android/infoextraction/HermesObject;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mHermesObject:Lcom/samsung/android/infoextraction/HermesObject;

    return-object v0
.end method

.method public getPatternType()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nPatternType:I

    return v0
.end method

.method public getSourceData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nType:I

    .line 105
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nPatternType:I

    .line 107
    const-class v0, Lcom/samsung/android/infoextraction/HermesObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/infoextraction/HermesObject;

    iput-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mHermesObject:Lcom/samsung/android/infoextraction/HermesObject;

    .line 108
    return-void
.end method

.method public setRequestData(ILjava/util/List;I)V
    .registers 8
    .param p1, "type"    # I
    .param p3, "patternType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 33
    .local p2, "origin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput p1, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nType:I

    .line 34
    iput p3, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nPatternType:I

    .line 35
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    instance-of v3, v1, Landroid/net/Uri;

    or-int/2addr v2, v3

    if-eqz v2, :cond_1e

    .line 37
    iget-object v2, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1e
    goto :goto_8

    .line 40
    :cond_1f
    return-void
.end method

.method public setRequestData(ILjava/util/List;ILcom/samsung/android/infoextraction/HermesObject;)V
    .registers 9
    .param p1, "type"    # I
    .param p3, "patternType"    # I
    .param p4, "hObj"    # Lcom/samsung/android/infoextraction/HermesObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/samsung/android/infoextraction/HermesObject;",
            ")V"
        }
    .end annotation

    .line 45
    .local p2, "origin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput p1, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nType:I

    .line 46
    iput p3, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nPatternType:I

    .line 47
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 48
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    instance-of v3, v1, Landroid/net/Uri;

    or-int/2addr v2, v3

    if-eqz v2, :cond_1e

    .line 49
    iget-object v2, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1e
    goto :goto_8

    .line 52
    :cond_1f
    if-eqz p4, :cond_23

    .line 53
    iput-object p4, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mHermesObject:Lcom/samsung/android/infoextraction/HermesObject;

    .line 55
    :cond_23
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mPrimitive:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 96
    iget v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->nPatternType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/infoextraction/KerykeionRequest;->mHermesObject:Lcom/samsung/android/infoextraction/HermesObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    return-void
.end method
