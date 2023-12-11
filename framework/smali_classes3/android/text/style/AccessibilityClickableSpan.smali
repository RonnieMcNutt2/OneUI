.class public Landroid/text/style/AccessibilityClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/AccessibilityClickableSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectionId:I

.field private final mOriginalClickableSpanId:I

.field private mSourceNodeId:J

.field private mWindowId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 147
    new-instance v0, Landroid/text/style/AccessibilityClickableSpan$1;

    invoke-direct {v0}, Landroid/text/style/AccessibilityClickableSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/AccessibilityClickableSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "originalClickableSpanId"    # I

    .line 58
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 52
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 53
    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 59
    iput p1, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 52
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 53
    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    .line 64
    return-void
.end method


# virtual methods
.method public copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "accessibilityNodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 119
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getConnectionId()I

    move-result v0

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 120
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 121
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 122
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 99
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 100
    return-object v1

    .line 102
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 103
    .local v0, "sp":Landroid/text/Spanned;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 104
    .local v2, "os":[Landroid/text/style/ClickableSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_2a

    .line 105
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/text/style/ClickableSpan;->getId()I

    move-result v4

    iget v5, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    if-ne v4, v5, :cond_27

    .line 106
    aget-object v1, v2, v3

    return-object v1

    .line 104
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 109
    .end local v3    # "i":I
    :cond_2a
    return-object v1
.end method

.method public getSpanTypeId()I
    .registers 2

    .line 68
    invoke-virtual {p0}, Landroid/text/style/AccessibilityClickableSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    .line 73
    const/16 v0, 0x19

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "unused"    # Landroid/view/View;

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    iget v1, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    iget-wide v3, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2e

    iget v1, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    if-eq v1, v2, :cond_2e

    .line 142
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v8

    .line 143
    .local v8, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    iget v3, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    iget-wide v4, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    const v6, 0x1020199

    move-object v1, v8

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    .line 145
    return-void

    .line 138
    .end local v8    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_2e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ClickableSpan for accessibility service not properly initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityClickableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 84
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void
.end method
