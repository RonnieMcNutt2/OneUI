.class public abstract Landroid/content/pm/PackageParser$IntentInfo;
.super Landroid/content/IntentFilter;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IntentInfo"
.end annotation


# instance fields
.field public banner:I

.field public hasDefault:Z

.field public icon:I

.field public labelRes:I

.field public logo:I

.field public nonLocalizedLabel:Ljava/lang/CharSequence;

.field public preferred:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 8589
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 8590
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 8593
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/os/Parcel;)V

    .line 8594
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iput-boolean v1, p0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 8595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    .line 8596
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 8597
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 8598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 8599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 8600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->preferred:I

    .line 8601
    return-void
.end method


# virtual methods
.method public writeIntentInfoToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 8605
    invoke-super {p0, p1, p2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8606
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8607
    iget v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8608
    iget-object v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 8609
    iget v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8610
    iget v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8611
    iget v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8612
    iget v0, p0, Landroid/content/pm/PackageParser$IntentInfo;->preferred:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8613
    return-void
.end method
