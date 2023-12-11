.class public Landroid/location/LocationConstants;
.super Ljava/lang/Object;
.source "LocationConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationConstants$LISTENER_TYPE;,
        Landroid/location/LocationConstants$PAUSED_BY;,
        Landroid/location/LocationConstants$STATE_TYPE;
    }
.end annotation


# static fields
.field public static final MAX_LISTENERID_THRESHOLD:I = 0x1e

.field public static final MSG_GMS_LOCATION:I = 0xc8

.field public static final MSG_LOCATION_ICON_CHANGED:I = 0xcc

.field public static final MSG_SETTING_CHANGED:I = 0xcb

.field public static final MSG_SLOCATION_REMOVE:I = 0xca

.field public static final MSG_SLOCATION_REQUEST:I = 0xc9


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
