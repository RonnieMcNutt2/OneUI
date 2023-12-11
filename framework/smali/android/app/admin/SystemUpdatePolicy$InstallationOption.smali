.class public Landroid/app/admin/SystemUpdatePolicy$InstallationOption;
.super Ljava/lang/Object;
.source "SystemUpdatePolicy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SystemUpdatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallationOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SystemUpdatePolicy$InstallationOption$InstallationOptionType;
    }
.end annotation


# instance fields
.field private mEffectiveTime:J

.field private final mType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmEffectiveTime(Landroid/app/admin/SystemUpdatePolicy$InstallationOption;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Landroid/app/admin/SystemUpdatePolicy$InstallationOption;)I
    .registers 1

    iget p0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mType:I

    return p0
.end method

.method constructor <init>(IJ)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "effectiveTime"    # J

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mType:I

    .line 588
    iput-wide p2, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    .line 589
    return-void
.end method


# virtual methods
.method public getEffectiveTime()J
    .registers 3

    .line 606
    iget-wide v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .line 597
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mType:I

    return v0
.end method

.method protected limitEffectiveTime(J)V
    .registers 5
    .param p1, "otherTime"    # J

    .line 611
    iget-wide v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->mEffectiveTime:J

    .line 612
    return-void
.end method
