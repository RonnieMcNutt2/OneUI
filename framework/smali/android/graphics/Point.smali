.class public Landroid/graphics/Point;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 147
    new-instance v0, Landroid/graphics/Point$1;

    invoke-direct {v0}, Landroid/graphics/Point$1;-><init>()V

    sput-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/graphics/Point;->x:I

    .line 35
    iput p2, p0, Landroid/graphics/Point;->y:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "src"    # Landroid/graphics/Point;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    .line 40
    return-void
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 123
    const-string/jumbo v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "sep_ix":I
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    .line 125
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 124
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 79
    iget v0, p0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 85
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_24

    .line 87
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/Point;

    .line 89
    .local v2, "point":Landroid/graphics/Point;
    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    if-eq v3, v4, :cond_1c

    return v1

    .line 90
    :cond_1c
    iget v3, p0, Landroid/graphics/Point;->y:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-eq v3, v4, :cond_23

    return v1

    .line 92
    :cond_23
    return v0

    .line 85
    .end local v2    # "point":Landroid/graphics/Point;
    :cond_24
    :goto_24
    return v1
.end method

.method public flattenToString()Ljava/lang/String;
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 97
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 98
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    .line 99
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public final negate()V
    .registers 2

    .line 63
    iget v0, p0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 64
    iget v0, p0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 65
    return-void
.end method

.method public final offset(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 71
    iget v0, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 72
    iget v0, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 73
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 176
    return-void
.end method

.method public set(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 46
    iput p1, p0, Landroid/graphics/Point;->x:I

    .line 47
    iput p2, p0, Landroid/graphics/Point;->y:I

    .line 48
    return-void
.end method

.method public set(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "src"    # Landroid/graphics/Point;

    .line 55
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 56
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 143
    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return-void
.end method
