; ModuleID = 'llvm/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add nsw i32 %1, 1
  %4 = zext i32 %3 to i64
  %5 = alloca i32, i64 %4, align 16
  store i32 0, i32* %5, align 16, !tbaa !5
  %6 = icmp slt i32 %1, 1
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = add i32 %1, 1
  %9 = zext i32 %8 to i64
  br label %10

10:                                               ; preds = %7, %26
  %11 = phi i64 [ 1, %7 ], [ %28, %26 ]
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ 0, %10 ], [ %24, %12 ]
  %14 = phi i32 [ -2147483648, %10 ], [ %23, %12 ]
  %15 = getelementptr inbounds i32, i32* %0, i64 %13
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = xor i64 %13, -1
  %18 = add nsw i64 %11, %17
  %19 = getelementptr inbounds i32, i32* %5, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = add nsw i32 %20, %16
  %22 = icmp slt i32 %14, %21
  %23 = select i1 %22, i32 %21, i32 %14
  %24 = add nuw nsw i64 %13, 1
  %25 = icmp eq i64 %24, %11
  br i1 %25, label %26, label %12, !llvm.loop !9

26:                                               ; preds = %12
  %27 = getelementptr inbounds i32, i32* %5, i64 %11
  store i32 %23, i32* %27, align 4, !tbaa !5
  %28 = add nuw nsw i64 %11, 1
  %29 = icmp eq i64 %28, %9
  br i1 %29, label %30, label %10, !llvm.loop !12

30:                                               ; preds = %26, %2
  %31 = sext i32 %1 to i64
  %32 = getelementptr inbounds i32, i32* %5, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  ret i32 %33
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD_reprocessed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
