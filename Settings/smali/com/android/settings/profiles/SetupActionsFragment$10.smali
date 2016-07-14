.class Lcom/android/settings/profiles/SetupActionsFragment$10;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/SetupActionsFragment;->requestVolumeDialog(ILandroid/app/StreamSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/SetupActionsFragment;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/settings/profiles/SetupActionsFragment$10;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/settings/profiles/SetupActionsFragment$10;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$10;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 727
    return-void
.end method
