.class public Lcom/android/internal/widget/ConversationLayout;
.super Landroid/widget/FrameLayout;
.source "ConversationLayout.java"

# interfaces
.implements Lcom/android/internal/widget/ImageMessageConsumer;
.implements Lcom/android/internal/widget/IMessagingLayout;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;
    }
.end annotation


# static fields
.field public static final FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final IMPORTANCE_ANIM_GROW_DURATION:I = 0xfa

.field public static final IMPORTANCE_ANIM_SHRINK_DELAY:I = 0x19

.field public static final IMPORTANCE_ANIM_SHRINK_DURATION:I = 0xc8

.field public static final LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

.field public static final OVERSHOOT:Landroid/view/animation/Interpolator;


# instance fields
.field private mActions:Lcom/android/internal/widget/NotificationActionListLayout;

.field private mAddedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mAppName:Lcom/android/internal/widget/ObservableTextView;

.field private mAppNameDivider:Landroid/view/View;

.field private mAppNameGone:Z

.field private mAvatarReplacement:Landroid/graphics/drawable/Icon;

.field private mBadgeProtrusion:I

.field private mContentContainer:Landroid/view/View;

.field private mContentMarginEnd:I

.field private mConversationAvatarSize:I

.field private mConversationAvatarSizeExpanded:I

.field private mConversationFacePile:Landroid/view/View;

.field private mConversationHeader:Landroid/view/View;

.field private mConversationIcon:Landroid/graphics/drawable/Icon;

.field private mConversationIconBadge:Landroid/view/View;

.field private mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

.field private mConversationIconContainer:Landroid/view/View;

.field private mConversationIconTopPadding:I

.field private mConversationIconTopPaddingExpandedGroup:I

.field private mConversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private mConversationMinHeight:I

.field private mConversationStartMargin:I

.field private mConversationText:Landroid/widget/TextView;

.field private mConversationTitle:Ljava/lang/CharSequence;

.field private mConversationTopMargin:I

.field private mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field private mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

.field private mExpandButtonContainer:Landroid/view/View;

.field private mExpandButtonContainerA11yContainer:Landroid/view/ViewGroup;

.field private mExpandable:Z

.field private mExpandedGroupBadgeProtrusion:I

.field private mExpandedGroupBadgeProtrusionFacePile:I

.field private mExpandedGroupMessagePadding:I

.field private mFacePileAvatarSize:I

.field private mFacePileAvatarSizeExpandedGroup:I

.field private mFacePileProtectionWidth:I

.field private mFacePileProtectionWidthExpanded:I

.field private mFallbackChatName:Ljava/lang/CharSequence;

.field private mFallbackGroupChatName:Ljava/lang/CharSequence;

.field private mFeedbackIcon:Landroid/view/View;

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mIcon:Lcom/android/internal/widget/CachingIconView;

.field private mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private mImageResolver:Lcom/android/internal/widget/ImageResolver;

.field private mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

.field private mImportantConversation:Z

.field private mIsCollapsed:Z

.field private mIsOneToOne:Z

.field private mLargeIcon:Landroid/graphics/drawable/Icon;

.field private mLayoutColor:I

.field private mMessageSpacingGroup:I

.field private mMessageSpacingStandard:I

.field private mMessageTextColor:I

.field private mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mMessagingClipRect:Landroid/graphics/Rect;

.field private mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

.field private mMinTouchSize:F

.field private mNameReplacement:Ljava/lang/CharSequence;

.field private mNotificationBackgroundColor:I

.field private mNotificationHeaderExpandedPadding:I

.field private final mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private mSenderTextColor:I

.field private mShortcutIcon:Landroid/graphics/drawable/Icon;

.field private mShowHistoricMessages:Z

.field private mToRecycle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

.field private mUser:Landroid/app/Person;


# direct methods
.method public static synthetic $r8$lambda$6XnGiICERsvPyJUB2V4DGrSxpN8(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RZa34GbrNmK3JMYAczJ_90G6KG8(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gE4dP3KoG-OumZf5X4xui_HX6rU(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ConversationLayout;->lambda$setIsImportantConversation$4(Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iqt1yf_TvPgMfoKIqLVwkGe-kHI(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$removeGroups$5(Lcom/android/internal/widget/MessagingGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tvQIZJJQpmvQt_2NXA12kGvO6W0(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zznj4MCnnwv9zoDQeKL1XqUIli0(Lcom/android/internal/widget/ConversationLayout;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$onFinishInflate$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAddedGroups(Lcom/android/internal/widget/ConversationLayout;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConversationIconBadgeBg(Lcom/android/internal/widget/ConversationLayout;)Lcom/android/internal/widget/CachingIconView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 79
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 80
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 81
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 82
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3fb33333    # 1.4f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->OVERSHOOT:Landroid/view/animation/Interpolator;

    .line 83
    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 151
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 151
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 151
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 151
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 175
    return-void
.end method

.method private addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V
    .registers 12
    .param p2, "remoteInputHistory"    # [Landroid/app/RemoteInputHistoryItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;[",
            "Landroid/app/RemoteInputHistoryItem;",
            ")V"
        }
    .end annotation

    .line 439
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    if-eqz p2, :cond_36

    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_36

    .line 442
    :cond_6
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_35

    .line 443
    aget-object v1, p2, v0

    .line 444
    .local v1, "historyMessage":Landroid/app/RemoteInputHistoryItem;
    new-instance v8, Landroid/app/Notification$MessagingStyle$Message;

    .line 445
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v6

    check-cast v2, Landroid/app/Person;

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    .line 446
    .local v2, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 447
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    .line 449
    :cond_2f
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v1    # "historyMessage":Landroid/app/RemoteInputHistoryItem;
    .end local v2    # "message":Landroid/app/Notification$MessagingStyle$Message;
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 451
    .end local v0    # "i":I
    :cond_35
    return-void

    .line 440
    :cond_36
    :goto_36
    return-void
.end method

.method private applyNotificationBackgroundColor(Landroid/widget/ImageView;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 881
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationBackgroundColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 882
    return-void
.end method

.method private bind(Ljava/util/List;Ljava/util/List;Z)V
    .registers 12
    .param p3, "showSpinner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;Z)V"
        }
    .end annotation

    .line 458
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    .local p2, "newHistoricMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/ConversationLayout;->createMessages(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 460
    .local v0, "historicMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/ConversationLayout;->createMessages(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 463
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 466
    .local v2, "oldGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v3, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v4, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/internal/widget/ConversationLayout;->findGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 474
    invoke-direct {p0, v3, v4, p3}, Lcom/android/internal/widget/ConversationLayout;->createGroupViews(Ljava/util/List;Ljava/util/List;Z)V

    .line 477
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->removeGroups(Ljava/util/ArrayList;)V

    .line 480
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingMessage;

    .line 481
    .local v6, "message":Lcom/android/internal/widget/MessagingMessage;
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    .line 482
    .end local v6    # "message":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_2a

    .line 483
    :cond_3c
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingMessage;

    .line 484
    .local v6, "historicMessage":Lcom/android/internal/widget/MessagingMessage;
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    .line 485
    .end local v6    # "historicMessage":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_42

    .line 487
    :cond_54
    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 488
    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 490
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateHistoricMessageVisibility()V

    .line 491
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateTitleAndNamesDisplay()V

    .line 493
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateConversationLayout()V

    .line 496
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_77

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 497
    .local v6, "child":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-interface {v6}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->recycle()V

    .line 498
    .end local v6    # "child":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    goto :goto_67

    .line 499
    :cond_77
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 500
    return-void
.end method

.method private bindFacePile()V
    .registers 9

    .line 635
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v1, 0x102028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 637
    .local v0, "bottomBackground":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v2, 0x1020289

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 639
    .local v1, "bottomView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v3, 0x102028b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 642
    .local v2, "topView":Landroid/widget/ImageView;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 647
    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v3, :cond_32

    .line 648
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    .line 649
    .local v3, "conversationAvatarSize":I
    iget v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSize:I

    .line 650
    .local v4, "facepileAvatarSize":I
    iget v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .local v5, "facePileBackgroundSize":I
    goto :goto_3b

    .line 652
    .end local v3    # "conversationAvatarSize":I
    .end local v4    # "facepileAvatarSize":I
    .end local v5    # "facePileBackgroundSize":I
    :cond_32
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    .line 653
    .restart local v3    # "conversationAvatarSize":I
    iget v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSizeExpandedGroup:I

    .line 654
    .restart local v4    # "facepileAvatarSize":I
    iget v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidthExpanded:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 656
    .restart local v5    # "facePileBackgroundSize":I
    :goto_3b
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 657
    .local v6, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 658
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 659
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 662
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 663
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 664
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 667
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 668
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 669
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 672
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 673
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 674
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    return-void
.end method

.method private createGroupViews(Ljava/util/List;Ljava/util/List;Z)V
    .registers 12
    .param p3, "showSpinner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;Z)V"
        }
    .end annotation

    .line 901
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local p2, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 902
    const/4 v0, 0x0

    .local v0, "groupIndex":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d6

    .line 903
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 904
    .local v1, "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v2, 0x0

    .line 906
    .local v2, "newGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "messageIndex":I
    :goto_19
    if-ltz v3, :cond_2b

    .line 907
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingMessage;

    .line 908
    .local v5, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v5}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v2

    .line 909
    if-eqz v2, :cond_28

    .line 910
    goto :goto_2b

    .line 906
    .end local v5    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 914
    .end local v3    # "messageIndex":I
    :cond_2b
    :goto_2b
    if-nez v2, :cond_39

    .line 915
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-static {v3}, Lcom/android/internal/widget/MessagingGroup;->createGroup(Lcom/android/internal/widget/MessagingLinearLayout;)Lcom/android/internal/widget/MessagingGroup;

    move-result-object v2

    .line 916
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 917
    :cond_39
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-ne v3, v5, :cond_ac

    .line 922
    :goto_41
    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_48

    .line 923
    const/4 v3, 0x2

    goto :goto_49

    .line 924
    :cond_48
    move v3, v5

    .line 922
    :goto_49
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setImageDisplayLocation(I)V

    .line 925
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/MessagingGroup;->setIsInConversation(Z)V

    .line 926
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    .line 927
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mSenderTextColor:I

    iget v6, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageTextColor:I

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    .line 928
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 929
    .local v3, "sender":Landroid/app/Person;
    const/4 v6, 0x0

    .line 930
    .local v6, "nameOverride":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-eq v3, v7, :cond_6c

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6c

    .line 931
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 933
    :cond_6c
    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v7, :cond_76

    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-nez v7, :cond_76

    move v7, v4

    goto :goto_77

    :cond_76
    move v7, v5

    :goto_77
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/MessagingGroup;->setShowingAvatar(Z)V

    .line 937
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/MessagingGroup;->setSingleLine(Z)V

    .line 939
    invoke-virtual {v2, v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setSender(Landroid/app/Person;Ljava/lang/CharSequence;)V

    .line 940
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v0, v7, :cond_8a

    if-eqz p3, :cond_8a

    goto :goto_8b

    :cond_8a
    move v4, v5

    :goto_8b
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/MessagingGroup;->setSending(Z)V

    .line 941
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_a5

    .line 945
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 946
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    .line 948
    :cond_a5
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/MessagingGroup;->setMessages(Ljava/util/List;)V

    .line 902
    .end local v1    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v2    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v3    # "sender":Landroid/app/Person;
    .end local v6    # "nameOverride":Ljava/lang/CharSequence;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 918
    .restart local v1    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .restart local v2    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    :cond_ac
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "group parent was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 919
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 950
    .end local v0    # "groupIndex":I
    .end local v1    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v2    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    :cond_d6
    return-void
.end method

.method private createMessages(Ljava/util/List;Z)Ljava/util/List;
    .registers 8
    .param p2, "historic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    .line 997
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 998
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 999
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 1000
    .local v2, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 1001
    .local v3, "message":Lcom/android/internal/widget/MessagingMessage;
    if-nez v3, :cond_1e

    .line 1002
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    invoke-static {p0, v2, v4}, Lcom/android/internal/widget/MessagingMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 1004
    :cond_1e
    invoke-interface {v3, p2}, Lcom/android/internal/widget/MessagingMessage;->setIsHistoric(Z)V

    .line 1005
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    .end local v2    # "m":Landroid/app/Notification$MessagingStyle$Message;
    .end local v3    # "message":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1007
    .end local v1    # "i":I
    :cond_27
    return-object v0
.end method

.method private findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;
    .registers 5
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 1011
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1012
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 1013
    .local v1, "existing":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1014
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1015
    return-object v1

    .line 1011
    .end local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1018
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_21
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 1019
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 1020
    .restart local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1021
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1022
    return-object v1

    .line 1018
    .end local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1025
    .end local v0    # "i":I
    :cond_40
    const/4 v0, 0x0

    return-object v0
.end method

.method private findGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;)V"
        }
    .end annotation

    .line 955
    .local p1, "historicMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p3, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local p4, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    const/4 v0, 0x0

    .line 956
    .local v0, "currentSenderKey":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 957
    .local v1, "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 958
    .local v2, "histSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_6f

    .line 960
    if-ge v3, v2, :cond_17

    .line 961
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .local v4, "message":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_1f

    .line 963
    .end local v4    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_17
    sub-int v4, v3, v2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .line 965
    .restart local v4    # "message":Lcom/android/internal/widget/MessagingMessage;
    :goto_1f
    const/4 v5, 0x1

    if-nez v1, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    const/4 v6, 0x0

    .line 967
    .local v6, "isNewGroup":Z
    :goto_25
    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v7

    if-nez v7, :cond_2d

    const/4 v7, 0x0

    goto :goto_35

    :cond_2d
    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    .line 968
    .local v7, "sender":Landroid/app/Person;
    :goto_35
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 969
    .local v8, "key":Ljava/lang/CharSequence;
    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v5, v9

    or-int/2addr v5, v6

    .line 970
    .end local v6    # "isNewGroup":Z
    .local v5, "isNewGroup":Z
    if-eqz v5, :cond_69

    .line 971
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 972
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    if-nez v7, :cond_50

    .line 974
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    move-object v7, v6

    .end local v7    # "sender":Landroid/app/Person;
    .local v6, "sender":Landroid/app/Person;
    goto :goto_65

    .line 977
    .end local v6    # "sender":Landroid/app/Person;
    .restart local v7    # "sender":Landroid/app/Person;
    :cond_50
    invoke-virtual {v7}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v6

    move-object v7, v6

    .line 979
    :goto_65
    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    move-object v0, v8

    .line 982
    :cond_69
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    .end local v4    # "message":Lcom/android/internal/widget/MessagingMessage;
    .end local v5    # "isNewGroup":Z
    .end local v7    # "sender":Landroid/app/Person;
    .end local v8    # "key":Ljava/lang/CharSequence;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 984
    .end local v3    # "i":I
    :cond_6f
    return-void
.end method

.method private static getFontScaledMarginHeight(Landroid/content/Context;I)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimenId"    # I

    .line 1305
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1306
    .local v0, "dimensionPixelSize":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 1307
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 1308
    .local v1, "factor":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1309
    .end local v1    # "factor":F
    .local v3, "factor":F
    int-to-float v1, v0

    mul-float/2addr v1, v3

    float-to-int v1, v1

    return v1
.end method

.method private getKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "person"    # Landroid/app/Person;

    .line 987
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_13

    :cond_4
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method private getRelativeTouchRect(Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 6
    .param p1, "touchRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;

    .line 1101
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1102
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    :goto_6
    if-eq v0, p0, :cond_1b

    .line 1103
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1104
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_6

    .line 1106
    :cond_1b
    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Ljava/lang/Integer;)V
    .registers 11
    .param p1, "visibility"    # Ljava/lang/Integer;

    .line 201
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 202
    .local v0, "isGone":Z
    :goto_d
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v4}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v4

    .line 203
    .local v4, "oldVisibility":I
    if-ne v4, v3, :cond_17

    move v5, v1

    goto :goto_18

    :cond_17
    move v5, v2

    .line 204
    .local v5, "wasGone":Z
    :goto_18
    if-eq v5, v0, :cond_23

    .line 207
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v6}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 213
    :cond_23
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v6}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v4

    .line 214
    if-ne v4, v3, :cond_2d

    move v6, v1

    goto :goto_2e

    :cond_2d
    move v6, v2

    :goto_2e
    move v5, v6

    .line 215
    iget-boolean v6, p0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    if-nez v6, :cond_35

    move v6, v3

    goto :goto_39

    :cond_35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_45

    move v6, v1

    goto :goto_46

    :cond_45
    move v6, v2

    .line 217
    .local v6, "isRingGone":Z
    :goto_46
    if-eq v5, v6, :cond_5a

    .line 220
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v7}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 221
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 224
    :cond_5a
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 225
    if-ne v4, v3, :cond_63

    goto :goto_64

    :cond_63
    move v1, v2

    .line 226
    .end local v5    # "wasGone":Z
    .local v1, "wasGone":Z
    :goto_64
    if-eq v1, v0, :cond_78

    .line 227
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 228
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_78
    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "forceHidden"    # Ljava/lang/Boolean;

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 235
    return-void
.end method

.method private synthetic lambda$onFinishInflate$2(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "forceHidden"    # Ljava/lang/Boolean;

    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 242
    return-void
.end method

.method private synthetic lambda$onFinishInflate$3(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "visibility"    # Ljava/lang/Integer;

    .line 293
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->onAppNameVisibilityChanged()V

    .line 294
    return-void
.end method

.method private synthetic lambda$removeGroups$5(Lcom/android/internal/widget/MessagingGroup;)V
    .registers 3
    .param p1, "group"    # Lcom/android/internal/widget/MessagingGroup;

    .line 796
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeTransientView(Landroid/view/View;)V

    .line 797
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->recycle()V

    .line 798
    return-void
.end method

.method private synthetic lambda$setIsImportantConversation$4(Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V
    .registers 8
    .param p1, "ring"    # Landroid/graphics/drawable/GradientDrawable;
    .param p2, "ringColor"    # I
    .param p3, "baseSize"    # I
    .param p4, "animation"    # Landroid/animation/ValueAnimator;

    .line 342
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 343
    .local v0, "strokeWidth":I
    invoke-virtual {p1, v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 344
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    .line 345
    .local v1, "newSize":I
    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 346
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->invalidate()V

    .line 347
    return-void
.end method

.method private onAppNameVisibilityChanged()V
    .registers 3

    .line 1197
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ObservableTextView;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ObservableTextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 1200
    .local v0, "appNameGone":Z
    :goto_12
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    if-eq v0, v1, :cond_1b

    .line 1201
    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    .line 1202
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppNameDividerVisibility()V

    .line 1204
    :cond_1b
    return-void
.end method

.method private removeGroups(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)V"
        }
    .end annotation

    .line 786
    .local p1, "oldGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 787
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4b

    .line 788
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingGroup;

    .line 789
    .local v2, "group":Lcom/android/internal/widget/MessagingGroup;
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 790
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v3

    .line 791
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->isShown()Z

    move-result v4

    .line 792
    .local v4, "wasShown":Z
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 793
    if-eqz v4, :cond_39

    invoke-static {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 794
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->addTransientView(Landroid/view/View;I)V

    .line 795
    new-instance v5, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v2}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)V

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/MessagingGroup;->removeGroupAnimated(Ljava/lang/Runnable;)V

    goto :goto_3e

    .line 802
    :cond_39
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    :goto_3e
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 805
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 787
    .end local v2    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v3    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v4    # "wasShown":Z
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 808
    .end local v1    # "i":I
    :cond_4b
    return-void
.end method

.method private setUser(Landroid/app/Person;)V
    .registers 4
    .param p1, "user"    # Landroid/app/Person;

    .line 890
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    .line 891
    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_28

    .line 892
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10806bc

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 894
    .local v0, "userIcon":Landroid/graphics/drawable/Icon;
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 895
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v1}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    .line 897
    .end local v0    # "userIcon":Landroid/graphics/drawable/Icon;
    :cond_28
    return-void
.end method

.method private updateActionListPadding()V
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v0, :cond_a

    .line 566
    const v1, 0x1050054

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->setCollapsibleIndentDimen(I)V

    .line 568
    :cond_a
    return-void
.end method

.method private updateAppName()V
    .registers 3

    .line 682
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ObservableTextView;->setVisibility(I)V

    .line 684
    return-void
.end method

.method private updateAppNameDividerVisibility()V
    .registers 3

    .line 1211
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    return-void
.end method

.method private updateContentEndPaddings()V
    .registers 7

    .line 1171
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    if-nez v0, :cond_8

    .line 1172
    const/4 v0, 0x0

    .line 1173
    .local v0, "headerPaddingEnd":I
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    .local v1, "contentPaddingEnd":I
    goto :goto_12

    .line 1174
    .end local v0    # "headerPaddingEnd":I
    .end local v1    # "contentPaddingEnd":I
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_f

    .line 1175
    const/4 v0, 0x0

    .line 1176
    .restart local v0    # "headerPaddingEnd":I
    const/4 v1, 0x0

    .restart local v1    # "contentPaddingEnd":I
    goto :goto_12

    .line 1178
    .end local v0    # "headerPaddingEnd":I
    .end local v1    # "contentPaddingEnd":I
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationHeaderExpandedPadding:I

    .line 1180
    .restart local v0    # "headerPaddingEnd":I
    const/4 v1, 0x0

    .line 1182
    .restart local v1    # "contentPaddingEnd":I
    :goto_12
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 1183
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 1184
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 1186
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 1182
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1188
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 1189
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 1190
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 1192
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 1188
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1193
    return-void
.end method

.method private updateConversationLayout()V
    .registers 10

    .line 507
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 508
    .local v0, "conversationText":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 509
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_58

    .line 511
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 512
    .local v1, "userKey":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_58

    .line 513
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 514
    .local v3, "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v4

    .line 515
    .local v4, "messageSender":Landroid/app/Person;
    if-eqz v4, :cond_32

    invoke-direct {p0, v4}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_34

    :cond_32
    if-nez v2, :cond_55

    .line 517
    :cond_34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 520
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 522
    :cond_3e
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_58

    .line 523
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 524
    .local v5, "avatarIcon":Landroid/graphics/drawable/Icon;
    if-nez v5, :cond_52

    .line 525
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    const-string v7, ""

    iget v8, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 528
    :cond_52
    iput-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 529
    .end local v5    # "avatarIcon":Landroid/graphics/drawable/Icon;
    goto :goto_58

    .line 512
    .end local v3    # "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "messageSender":Landroid/app/Person;
    :cond_55
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 534
    .end local v1    # "userKey":Ljava/lang/CharSequence;
    .end local v2    # "i":I
    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_60

    .line 535
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 537
    :cond_60
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_6c

    goto :goto_83

    .line 542
    :cond_6c
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 544
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 546
    const v1, 0x1020288

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    .line 547
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile()V

    goto :goto_94

    .line 538
    :cond_83
    :goto_83
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 549
    :goto_94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 550
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackChatName:Ljava/lang/CharSequence;

    goto :goto_a3

    :cond_a1
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackGroupChatName:Ljava/lang/CharSequence;

    :goto_a3
    move-object v0, v1

    .line 552
    :cond_a4
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/PeopleHelper;->maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V

    .line 556
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppName()V

    .line 557
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateIconPositionAndSize()V

    .line 558
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateImageMessages()V

    .line 559
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updatePaddingsBasedOnContentAvailability()V

    .line 560
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateActionListPadding()V

    .line 561
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppNameDividerVisibility()V

    .line 562
    return-void
.end method

.method private updateExpandButton()V
    .registers 5

    .line 1142
    const/16 v0, 0x31

    .line 1143
    .local v0, "buttonGravity":I
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

    .line 1145
    .local v1, "newContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/NotificationExpandButton;->setExpanded(Z)V

    .line 1149
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v1, v2, :cond_2c

    .line 1150
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1151
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1154
    iget v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationMinHeight:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->setMinimumHeight(I)V

    .line 1158
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 1159
    invoke-virtual {v2}, Lcom/android/internal/widget/NotificationExpandButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1160
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1162
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTopMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1163
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/NotificationExpandButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1164
    return-void
.end method

.method private updateHistoricMessageVisibility()V
    .registers 13

    .line 1034
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1035
    .local v0, "numHistoric":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v1, v0, :cond_20

    .line 1036
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .line 1037
    .local v4, "existing":Lcom/android/internal/widget/MessagingMessage;
    iget-boolean v5, p0, Lcom/android/internal/widget/ConversationLayout;->mShowHistoricMessages:Z

    if-eqz v5, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    invoke-interface {v4, v2}, Lcom/android/internal/widget/MessagingMessage;->setVisibility(I)V

    .line 1035
    .end local v4    # "existing":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1039
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1040
    .local v1, "numGroups":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v1, :cond_68

    .line 1041
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingGroup;

    .line 1042
    .local v5, "group":Lcom/android/internal/widget/MessagingGroup;
    const/4 v6, 0x0

    .line 1043
    .local v6, "visibleChildren":I
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v7

    .line 1044
    .local v7, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1045
    .local v8, "numGroupMessages":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3b
    if-ge v9, v8, :cond_4e

    .line 1046
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/MessagingMessage;

    .line 1047
    .local v10, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v10}, Lcom/android/internal/widget/MessagingMessage;->getVisibility()I

    move-result v11

    if-eq v11, v3, :cond_4b

    .line 1048
    add-int/lit8 v6, v6, 0x1

    .line 1045
    .end local v10    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_4b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 1051
    .end local v9    # "j":I
    :cond_4e
    if-lez v6, :cond_5a

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v9

    if-ne v9, v3, :cond_5a

    .line 1052
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    goto :goto_65

    .line 1053
    :cond_5a
    if-nez v6, :cond_65

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v9

    if-eq v9, v3, :cond_65

    .line 1054
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    .line 1040
    .end local v5    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v6    # "visibleChildren":I
    .end local v7    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v8    # "numGroupMessages":I
    :cond_65
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1057
    .end local v4    # "i":I
    :cond_68
    return-void
.end method

.method private updateIconPositionAndSize()V
    .registers 5

    .line 696
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 700
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 701
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusionFacePile:I

    goto :goto_16

    .line 702
    :cond_14
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusion:I

    :goto_16
    nop

    .line 703
    .local v0, "badgeProtrusion":I
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    .local v1, "conversationAvatarSize":I
    goto :goto_1e

    .line 697
    .end local v0    # "badgeProtrusion":I
    .end local v1    # "conversationAvatarSize":I
    :cond_1a
    :goto_1a
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mBadgeProtrusion:I

    .line 698
    .restart local v0    # "badgeProtrusion":I
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    .line 706
    .restart local v1    # "conversationAvatarSize":I
    :goto_1e
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3d

    .line 707
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 708
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 709
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 710
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 711
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 712
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 713
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/CachingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_58

    .line 717
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 718
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 719
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 720
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 721
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_58
    return-void
.end method

.method private updateImageMessages()V
    .registers 5

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "newMessage":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 576
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingGroup;

    .line 577
    .local v1, "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v2

    .line 578
    .local v2, "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    if-eqz v2, :cond_25

    .line 579
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingImageMessage;->getView()Landroid/view/View;

    move-result-object v0

    .line 583
    .end local v1    # "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v2    # "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    :cond_25
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 584
    .local v1, "previousMessage":Landroid/view/View;
    if-eq v1, v0, :cond_3a

    .line 585
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 586
    if-eqz v0, :cond_3a

    .line 587
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;)V

    .line 590
    :cond_3a
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v0, :cond_3f

    goto :goto_41

    :cond_3f
    const/16 v2, 0x8

    :goto_41
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setVisibility(I)V

    .line 591
    return-void
.end method

.method private updatePaddingsBasedOnContentAvailability()V
    .registers 8

    .line 727
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 728
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingStandard:I

    goto :goto_b

    :cond_9
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingGroup:I

    .line 727
    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setSpacing(I)V

    .line 730
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iget-boolean v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v2, :cond_18

    goto :goto_1b

    .line 734
    :cond_18
    iget v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupMessagePadding:I

    goto :goto_1c

    .line 731
    :cond_1b
    :goto_1b
    move v2, v1

    .line 734
    :goto_1c
    nop

    .line 736
    .local v2, "messagingPadding":I
    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_24

    goto :goto_27

    .line 738
    :cond_24
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPaddingExpandedGroup:I

    goto :goto_29

    .line 737
    :cond_27
    :goto_27
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPadding:I

    .line 738
    :goto_29
    nop

    .line 740
    .local v0, "iconPadding":I
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 741
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 743
    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 744
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 740
    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 746
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 747
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 749
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingEnd()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 750
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingBottom()I

    move-result v6

    .line 746
    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->setPaddingRelative(IIII)V

    .line 753
    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-nez v3, :cond_5e

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v3, :cond_5e

    const/4 v3, 0x1

    goto :goto_5f

    :cond_5e
    move v3, v1

    .line 754
    .local v3, "isGroupExpanded":Z
    :goto_5f
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 755
    .local v4, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v3, :cond_6a

    goto :goto_6c

    :cond_6a
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationStartMargin:I

    :goto_6c
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 756
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/MessagingLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    return-void
.end method

.method private updateTitleAndNamesDisplay()V
    .registers 10

    .line 812
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefix(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 815
    .local v0, "uniqueNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 816
    .local v1, "cachedAvatars":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 818
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 819
    .local v3, "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-ne v4, v5, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 820
    .local v4, "isOwnMessage":Z
    :goto_29
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 821
    .local v5, "senderName":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_55

    iget-boolean v6, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v6, :cond_44

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v6, :cond_44

    if-nez v4, :cond_44

    .line 823
    goto :goto_55

    .line 825
    :cond_44
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 826
    .local v6, "symbol":Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->getAvatarSymbolIfMatching(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 828
    .local v7, "cachedIcon":Landroid/graphics/drawable/Icon;
    if-eqz v7, :cond_55

    .line 829
    invoke-virtual {v1, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    .end local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "isOwnMessage":Z
    .end local v5    # "senderName":Ljava/lang/CharSequence;
    .end local v6    # "symbol":Ljava/lang/String;
    .end local v7    # "cachedIcon":Landroid/graphics/drawable/Icon;
    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 833
    .end local v2    # "i":I
    :cond_58
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_59
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b7

    .line 835
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 836
    .restart local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 837
    .local v4, "senderName":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 838
    goto :goto_b4

    .line 840
    :cond_7a
    iget-boolean v5, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v5, :cond_90

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_90

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-eq v5, v6, :cond_90

    .line 841
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    goto :goto_b4

    .line 843
    :cond_90
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 844
    .local v5, "cachedIcon":Landroid/graphics/drawable/Icon;
    if-nez v5, :cond_a9

    .line 845
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 846
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    .line 845
    invoke-virtual {v6, v4, v7, v8}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 847
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    :cond_a9
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setCreatedAvatar(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 833
    .end local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "senderName":Ljava/lang/CharSequence;
    .end local v5    # "cachedIcon":Landroid/graphics/drawable/Icon;
    :cond_b4
    :goto_b4
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 853
    .end local v2    # "i":I
    :cond_b7
    return-void
.end method


# virtual methods
.method public bindFacePile(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 15
    .param p1, "bottomBackground"    # Landroid/widget/ImageView;
    .param p2, "bottomView"    # Landroid/widget/ImageView;
    .param p3, "topView"    # Landroid/widget/ImageView;

    .line 598
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 602
    const/4 v1, 0x0

    .line 603
    .local v1, "secondLastIcon":Landroid/graphics/drawable/Icon;
    const/4 v2, 0x0

    .line 604
    .local v2, "lastKey":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 605
    .local v3, "lastIcon":Landroid/graphics/drawable/Icon;
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-direct {p0, v4}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 606
    .local v4, "userKey":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_19
    if-ltz v5, :cond_60

    .line 607
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/MessagingGroup;

    .line 608
    .local v7, "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v7}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v8

    .line 609
    .local v8, "messageSender":Landroid/app/Person;
    if-eqz v8, :cond_35

    .line 610
    invoke-direct {p0, v8}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_35

    move v9, v6

    goto :goto_36

    :cond_35
    move v9, v0

    .line 611
    .local v9, "notUser":Z
    :goto_36
    if-eqz v8, :cond_44

    .line 612
    invoke-direct {p0, v8}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_44

    move v10, v6

    goto :goto_45

    :cond_44
    move v10, v0

    .line 613
    .local v10, "notIncluded":Z
    :goto_45
    if-eqz v9, :cond_49

    if-nez v10, :cond_4d

    :cond_49
    if-nez v5, :cond_5d

    if-nez v2, :cond_5d

    .line 615
    :cond_4d
    if-nez v3, :cond_58

    .line 616
    invoke-virtual {v7}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 617
    invoke-direct {p0, v8}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_5d

    .line 619
    :cond_58
    invoke-virtual {v7}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 620
    goto :goto_60

    .line 606
    .end local v7    # "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v8    # "messageSender":Landroid/app/Person;
    .end local v9    # "notUser":Z
    .end local v10    # "notIncluded":Z
    :cond_5d
    :goto_5d
    add-int/lit8 v5, v5, -0x1

    goto :goto_19

    .line 624
    .end local v5    # "i":I
    :cond_60
    :goto_60
    const-string v0, ""

    if-nez v3, :cond_6e

    .line 625
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    const-string v6, " "

    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v5, v6, v0, v7}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 627
    :cond_6e
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 628
    if-nez v1, :cond_7b

    .line 629
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget v6, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v5, v0, v0, v6}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 631
    :cond_7b
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 632
    return-void
.end method

.method public getConversationIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 1271
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getConversationSenderName()Ljava/lang/CharSequence;
    .registers 5

    .line 1236
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1237
    const/4 v0, 0x0

    return-object v0

    .line 1239
    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1240
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403b7

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getConversationText()Ljava/lang/CharSequence;
    .registers 9

    .line 1249
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1250
    return-object v1

    .line 1252
    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingMessage;

    .line 1253
    .local v0, "messagingMessage":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v2

    if-nez v2, :cond_1f

    goto :goto_27

    .line 1254
    :cond_1f
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_27
    nop

    .line 1255
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_50

    instance-of v2, v0, Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v2, :cond_50

    .line 1256
    nop

    .line 1257
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1258
    .local v2, "unformatted":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1259
    .local v3, "spannableString":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1262
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 1259
    const/4 v6, 0x0

    const/16 v7, 0x11

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1264
    return-object v3

    .line 1266
    .end local v2    # "unformatted":Ljava/lang/String;
    .end local v3    # "spannableString":Landroid/text/SpannableString;
    :cond_50
    return-object v1
.end method

.method public getConversationTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 782
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getImageMessageContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 1113
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public getMessagingGroups()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation

    .line 1117
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;
    .registers 2

    .line 1109
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public isImportantConversation()Z
    .registers 2

    .line 383
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    return v0
.end method

.method public isOneToOne()Z
    .registers 2

    .line 1244
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 6

    .line 179
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    .line 181
    const v0, 0x102045e

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 182
    const v0, 0x10201ce

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationActionListLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    .line 183
    const v0, 0x1020292

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 187
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 188
    .local v1, "size":I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    .line 189
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ConversationLayout;->setMessagingClippingDisabled(Z)V

    .line 190
    const v2, 0x102028d

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    .line 191
    const v2, 0x1020291

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 192
    const v2, 0x1020006

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 193
    const v2, 0x10202e6

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    .line 195
    const v2, 0x1020290

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    .line 196
    const v2, 0x102028e

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    .line 197
    const v2, 0x102028f

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    .line 198
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v4, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/CachingIconView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 232
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v4, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    .line 238
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    new-instance v4, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    .line 243
    const v2, 0x1020293

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    .line 244
    const v2, 0x10202d8

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    .line 245
    nop

    .line 246
    const v2, 0x10202d6

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainerA11yContainer:Landroid/view/ViewGroup;

    .line 247
    const v2, 0x102028c

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 248
    const v2, 0x102044b

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 249
    const v2, 0x10202d7

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

    .line 250
    const v2, 0x10202d5

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationExpandButton;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10502a3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingStandard:I

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10502a4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingGroup:I

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050108

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationHeaderExpandedPadding:I

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050271

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500fa

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mBadgeProtrusion:I

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500f8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500f9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105010c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPaddingExpandedGroup:I

    .line 268
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContext:Landroid/content/Context;

    const v4, 0x105010b

    invoke-static {v2, v4}, Lcom/android/internal/widget/ConversationLayout;->getFontScaledMarginHeight(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPadding:I

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105015f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupMessagePadding:I

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500fb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusion:I

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500fc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusionFacePile:I

    .line 276
    const v2, 0x1020288

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050104

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSize:I

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050105

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSizeExpandedGroup:I

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050106

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidth:I

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1050107

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidthExpanded:I

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10403b9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackChatName:Ljava/lang/CharSequence;

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10403b8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackGroupChatName:Ljava/lang/CharSequence;

    .line 289
    const v2, 0x10201fe

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ObservableTextView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    .line 290
    const v2, 0x10201fd

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameDivider:Landroid/view/View;

    .line 291
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ObservableTextView;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_214

    const/4 v3, 0x1

    :cond_214
    iput-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    .line 292
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    new-instance v3, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ObservableTextView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050272

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationStartMargin:I

    .line 298
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContext:Landroid/content/Context;

    const v3, 0x1050103

    invoke-static {v2, v3}, Lcom/android/internal/widget/ConversationLayout;->getFontScaledMarginHeight(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTopMargin:I

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050102

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationMinHeight:I

    .line 300
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1061
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1062
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1063
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/ConversationLayout$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ConversationLayout$2;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1081
    :cond_17
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->clear()V

    .line 1082
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8e

    .line 1083
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1084
    .local v0, "width":F
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1085
    .local v1, "height":F
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1086
    .local v2, "feedbackTouchRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float v5, v0, v4

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1088
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1090
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1091
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1093
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ConversationLayout;->getRelativeTouchRect(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1094
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    new-instance v4, Landroid/view/TouchDelegate;

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-direct {v4, v2, v5}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->add(Landroid/view/TouchDelegate;)V

    .line 1097
    .end local v0    # "width":F
    .end local v1    # "height":F
    .end local v2    # "feedbackTouchRect":Landroid/graphics/Rect;
    :cond_8e
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 1098
    return-void
.end method

.method public setAvatarReplacement(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    .line 305
    return-void
.end method

.method public setConversationTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 778
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 779
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 402
    const-string v0, "android.messages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 403
    .local v0, "messages":[Landroid/os/Parcelable;
    nop

    .line 404
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    .line 405
    .local v1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const-string v2, "android.messages.historic"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 406
    .local v2, "histMessages":[Landroid/os/Parcelable;
    nop

    .line 407
    invoke-static {v2}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v3

    .line 410
    .local v3, "newHistoricMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const-string v4, "android.messagingUser"

    const-class v5, Landroid/app/Person;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Person;

    invoke-direct {p0, v4}, Lcom/android/internal/widget/ConversationLayout;->setUser(Landroid/app/Person;)V

    .line 413
    const-class v4, Landroid/app/RemoteInputHistoryItem;

    .line 414
    const-string v5, "android.remoteInputHistoryItems"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/app/RemoteInputHistoryItem;

    .line 415
    .local v4, "history":[Landroid/app/RemoteInputHistoryItem;
    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/ConversationLayout;->addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V

    .line 417
    nop

    .line 418
    const-string v5, "android.remoteInputSpinner"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 420
    .local v5, "showSpinner":Z
    invoke-direct {p0, v1, v3, v5}, Lcom/android/internal/widget/ConversationLayout;->bind(Ljava/util/List;Ljava/util/List;Z)V

    .line 422
    const-string v6, "android.conversationUnreadMessageCount"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 423
    .local v6, "unreadCount":I
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ConversationLayout;->setUnreadCount(I)V

    .line 424
    return-void
.end method

.method public setImageResolver(Lcom/android/internal/widget/ImageResolver;)V
    .registers 2
    .param p1, "resolver"    # Lcom/android/internal/widget/ImageResolver;

    .line 428
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    .line 429
    return-void
.end method

.method public setIsCollapsed(Z)V
    .registers 4
    .param p1, "isCollapsed"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 393
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz p1, :cond_8

    const/4 v1, 0x2

    goto :goto_b

    :cond_8
    const v1, 0x7fffffff

    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setMaxDisplayedLines(I)V

    .line 396
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateExpandButton()V

    .line 397
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateContentEndPaddings()V

    .line 398
    return-void
.end method

.method public setIsImportantConversation(Z)V
    .registers 3
    .param p1, "isImportantConversation"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ConversationLayout;->setIsImportantConversation(ZZ)V

    .line 316
    return-void
.end method

.method public setIsImportantConversation(ZZ)V
    .registers 20
    .param p1, "isImportantConversation"    # Z
    .param p2, "animate"    # Z

    .line 320
    move-object/from16 v0, p0

    move/from16 v1, p1

    iput-boolean v1, v0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    .line 321
    iget-object v2, v0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_17

    iget-object v5, v0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v5}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_17

    .line 322
    move v3, v4

    goto :goto_18

    :cond_17
    nop

    .line 321
    :goto_18
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 324
    if-eqz p2, :cond_cc

    if-eqz v1, :cond_cc

    .line 325
    iget-object v2, v0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 326
    .local v2, "ring":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 327
    iget-object v3, v0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v3}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 328
    .local v3, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 330
    const v6, 0x1060205

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 331
    .local v5, "ringColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 332
    const v7, 0x10501a5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 333
    .local v6, "standardThickness":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 334
    const v8, 0x10501a3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 335
    .local v7, "largeThickness":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10501a4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 337
    .local v8, "standardSize":I
    mul-int/lit8 v9, v6, 0x2

    sub-int v9, v8, v9

    .line 338
    .local v9, "baseSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 339
    const v11, 0x105010d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 341
    .local v10, "bgSize":I
    new-instance v11, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda5;

    invoke-direct {v11, v0, v2, v5, v9}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V

    .line 349
    .local v11, "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v12, 0x2

    new-array v13, v12, [F

    const/4 v14, 0x0

    aput v14, v13, v4

    int-to-float v14, v7

    const/4 v15, 0x1

    aput v14, v13, v15

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 350
    .local v13, "growAnimation":Landroid/animation/ValueAnimator;
    sget-object v14, Lcom/android/internal/widget/ConversationLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 351
    move/from16 v16, v5

    .end local v5    # "ringColor":I
    .local v16, "ringColor":I
    const-wide/16 v4, 0xfa

    invoke-virtual {v13, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 352
    invoke-virtual {v13, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 354
    new-array v4, v12, [F

    int-to-float v5, v7

    const/4 v14, 0x0

    aput v5, v4, v14

    int-to-float v5, v6

    aput v5, v4, v15

    .line 355
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 356
    .local v4, "shrinkAnimation":Landroid/animation/ValueAnimator;
    const-wide/16 v14, 0xc8

    invoke-virtual {v4, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 357
    const-wide/16 v14, 0x19

    invoke-virtual {v4, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 358
    sget-object v14, Lcom/android/internal/widget/ConversationLayout;->OVERSHOOT:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    invoke-virtual {v4, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 360
    new-instance v14, Lcom/android/internal/widget/ConversationLayout$1;

    invoke-direct {v14, v0, v3, v9, v10}, Lcom/android/internal/widget/ConversationLayout$1;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V

    invoke-virtual {v4, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 376
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 377
    .local v14, "anims":Landroid/animation/AnimatorSet;
    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v13, v12, v15

    const/4 v5, 0x1

    aput-object v4, v12, v5

    invoke-virtual {v14, v12}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 378
    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    .line 380
    .end local v2    # "ring":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "bg":Landroid/graphics/drawable/GradientDrawable;
    .end local v4    # "shrinkAnimation":Landroid/animation/ValueAnimator;
    .end local v6    # "standardThickness":I
    .end local v7    # "largeThickness":I
    .end local v8    # "standardSize":I
    .end local v9    # "baseSize":I
    .end local v10    # "bgSize":I
    .end local v11    # "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .end local v13    # "growAnimation":Landroid/animation/ValueAnimator;
    .end local v14    # "anims":Landroid/animation/AnimatorSet;
    .end local v16    # "ringColor":I
    :cond_cc
    return-void
.end method

.method public setIsOneToOne(Z)V
    .registers 2
    .param p1, "oneToOne"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 862
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    .line 863
    return-void
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 762
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 763
    return-void
.end method

.method public setLayoutColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 857
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    .line 858
    return-void
.end method

.method public setMessageTextColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 886
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageTextColor:I

    .line 887
    return-void
.end method

.method public setMessagingClippingDisabled(Z)V
    .registers 4
    .param p1, "clippingDisabled"    # Z

    .line 1231
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    :goto_8
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 1232
    return-void
.end method

.method public setNameReplacement(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "nameReplacement"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 310
    return-void
.end method

.method public setNotificationBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 876
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationBackgroundColor:I

    .line 877
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->applyNotificationBackgroundColor(Landroid/widget/ImageView;)V

    .line 878
    return-void
.end method

.method public setSenderTextColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 867
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mSenderTextColor:I

    .line 868
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 869
    return-void
.end method

.method public setShortcutIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "shortcutIcon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 767
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 768
    return-void
.end method

.method public setUnreadCount(I)V
    .registers 3
    .param p1, "unreadCount"    # I

    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NotificationExpandButton;->setNumber(I)V

    .line 434
    return-void
.end method

.method public shouldHideAppName()Z
    .registers 2

    .line 687
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    return v0
.end method

.method public showHistoricMessages(Z)V
    .registers 2
    .param p1, "show"    # Z

    .line 1029
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShowHistoricMessages:Z

    .line 1030
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateHistoricMessageVisibility()V

    .line 1031
    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .registers 6
    .param p1, "expandable"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 1216
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 1217
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 1218
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/NotificationExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1220
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_22

    .line 1222
    :cond_15
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1225
    :goto_22
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setVisibility(I)V

    .line 1226
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateContentEndPaddings()V

    .line 1227
    return-void
.end method
