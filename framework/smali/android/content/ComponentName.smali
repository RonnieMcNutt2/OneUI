.class public final Landroid/content/ComponentName;
.super Ljava/lang/Object;
.source "ComponentName.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ComponentName$WithComponentName;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClass:Ljava/lang/String;

.field private final mPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 385
    new-instance v0, Landroid/content/ComponentName$1;

    invoke-direct {v0}, Landroid/content/ComponentName$1;-><init>()V

    sput-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 131
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    .line 133
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Landroid/content/Context;
    .param p2, "cls"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-eqz p2, :cond_e

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    .line 121
    return-void

    .line 118
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "class name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    .line 408
    if-eqz v0, :cond_1c

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    .line 411
    if-eqz v0, :cond_14

    .line 413
    return-void

    .line 411
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "class name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "package name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-eqz p1, :cond_14

    .line 104
    if-eqz p2, :cond_c

    .line 105
    iput-object p1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    .line 107
    return-void

    .line 104
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "class name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "package name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static appendShortClassName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 173
    .local v0, "PN":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 174
    .local v1, "CN":I
    if-le v1, v0, :cond_1c

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1c

    .line 175
    invoke-virtual {p0, p2, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 176
    return-void

    .line 179
    .end local v0    # "PN":I
    .end local v1    # "CN":I
    :cond_1c
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    return-void
.end method

.method public static appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 247
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {p0, p1, p2}, Landroid/content/ComponentName;->appendShortClassName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public static createRelative(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3
    .param p0, "pkg"    # Landroid/content/Context;
    .param p1, "cls"    # Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "cls"    # Ljava/lang/String;

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_21

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "fullName":Ljava/lang/String;
    goto :goto_22

    .line 70
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_21
    move-object v0, p1

    .line 72
    .restart local v0    # "fullName":Ljava/lang/String;
    :goto_22
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 61
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "class name cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 2
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 203
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method private static printShortClassName(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 184
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 186
    .local v0, "PN":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 187
    .local v1, "CN":I
    if-le v1, v0, :cond_1e

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1e

    .line 188
    sub-int v2, v1, v0

    invoke-virtual {p0, p2, v0, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 189
    return-void

    .line 192
    .end local v0    # "PN":I
    .end local v1    # "CN":I
    :cond_1e
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public static printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 254
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 256
    invoke-static {p0, p1, p2}, Landroid/content/ComponentName;->printShortClassName(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 381
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_c

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 276
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 277
    .local v0, "sep":I
    if-ltz v0, :cond_41

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_11

    goto :goto_41

    .line 280
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "pkg":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "cls":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3b

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_3b

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    :cond_3b
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 278
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "cls":Ljava/lang/String;
    :cond_41
    :goto_41
    const/4 v1, 0x0

    return-object v1
.end method

.method public static writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "c"    # Landroid/content/ComponentName;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 362
    if-eqz p0, :cond_7

    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 365
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    :goto_b
    return-void
.end method


# virtual methods
.method public appendShortString(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 241
    iget-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public clone()Landroid/content/ComponentName;
    .registers 4

    .line 137
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Landroid/content/ComponentName;)I
    .registers 5
    .param p1, "that"    # Landroid/content/ComponentName;

    .line 334
    iget-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 335
    .local v0, "v":I
    if-eqz v0, :cond_b

    .line 336
    return v0

    .line 338
    :cond_b
    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 40
    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .registers 2

    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 303
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 304
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 305
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 306
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 307
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 317
    instance-of v0, p1, Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 318
    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    .line 320
    .local v0, "other":Landroid/content/ComponentName;
    iget-object v2, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 320
    :goto_1f
    return v1

    .line 323
    .end local v0    # "other":Landroid/content/ComponentName;
    :cond_20
    return v1
.end method

.method public flattenToShortString()Ljava/lang/String;
    .registers 4

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public flattenToString()Ljava/lang/String;
    .registers 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getShortClassName()Ljava/lang/String;
    .registers 5

    .line 159
    iget-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 160
    iget-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 161
    .local v0, "PN":I
    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 162
    .local v1, "CN":I
    if-le v1, v0, :cond_29

    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_29

    .line 163
    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 166
    .end local v0    # "PN":I
    .end local v1    # "CN":I
    :cond_29
    iget-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 329
    iget-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

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

    .line 348
    iget-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    return-void
.end method
