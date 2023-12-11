.class public final Landroid/content/om/OverlayManagerTransaction$Request;
.super Ljava/lang/Object;
.source "OverlayManagerTransaction.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/OverlayManagerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/OverlayManagerTransaction$Request$RequestType;
    }
.end annotation


# static fields
.field public static final BUNDLE_FABRICATED_OVERLAY:Ljava/lang/String; = "fabricated_overlay"

.field public static final TYPE_REGISTER_FABRICATED:I = 0x2

.field public static final TYPE_SET_DISABLED:I = 0x1

.field public static final TYPE_SET_ENABLED:I = 0x0

.field public static final TYPE_UNREGISTER_FABRICATED:I = 0x3


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final overlay:Landroid/content/om/OverlayIdentifier;

.field public final type:I

.field public final userId:I


# direct methods
.method public constructor <init>(ILandroid/content/om/OverlayIdentifier;I)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p3, "userId"    # I

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;)V

    .line 172
    return-void
.end method

.method public constructor <init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p3, "userId"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput p1, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    .line 177
    iput-object p2, p0, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 178
    iput p3, p0, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    .line 179
    iput-object p4, p0, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    .line 180
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 184
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    iget v4, p0, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 184
    const-string v2, "Request{type=0x%02x (%s), overlay=%s, userId=%d}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeToString()Ljava/lang/String;
    .registers 3

    .line 195
    iget v0, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    packed-switch v0, :pswitch_data_20

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TYPE_UNKNOWN (0x%02x)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :pswitch_14
    const-string v0, "TYPE_UNREGISTER_FABRICATED"

    return-object v0

    .line 198
    :pswitch_17
    const-string v0, "TYPE_REGISTER_FABRICATED"

    return-object v0

    .line 197
    :pswitch_1a
    const-string v0, "TYPE_SET_DISABLED"

    return-object v0

    .line 196
    :pswitch_1d
    const-string v0, "TYPE_SET_ENABLED"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
    .end packed-switch
.end method
