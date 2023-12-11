.class public Landroid/service/notification/ZenModeDiff;
.super Ljava/lang/Object;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeDiff$RuleDiff;,
        Landroid/service/notification/ZenModeDiff$ConfigDiff;,
        Landroid/service/notification/ZenModeDiff$BaseDiff;,
        Landroid/service/notification/ZenModeDiff$FieldDiff;,
        Landroid/service/notification/ZenModeDiff$ExistenceChange;
    }
.end annotation


# static fields
.field public static final ADDED:I = 0x1

.field public static final NONE:I = 0x0

.field public static final REMOVED:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
