; ModuleID = 'llvm/cpp_transcoder/FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY/FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY/FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %30

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = and i64 %5, 1
  %7 = icmp eq i32 %1, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = and i64 %5, 4294967294
  br label %10

10:                                               ; preds = %45, %8
  %11 = phi i64 [ 0, %8 ], [ %46, %45 ]
  %12 = phi i32 [ -2147483648, %8 ], [ %42, %45 ]
  %13 = phi i64 [ 0, %8 ], [ %47, %45 ]
  br label %49

14:                                               ; preds = %45, %4
  %15 = phi i32 [ undef, %4 ], [ %42, %45 ]
  %16 = phi i64 [ 0, %4 ], [ %46, %45 ]
  %17 = phi i32 [ -2147483648, %4 ], [ %42, %45 ]
  %18 = icmp eq i64 %6, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14, %19
  %20 = phi i64 [ %28, %19 ], [ %16, %14 ]
  %21 = phi i32 [ %25, %19 ], [ 0, %14 ]
  %22 = phi i32 [ %27, %19 ], [ %17, %14 ]
  %23 = getelementptr inbounds i32, i32* %0, i64 %20
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = xor i32 %24, %21
  %26 = icmp slt i32 %22, %25
  %27 = select i1 %26, i32 %25, i32 %22
  %28 = add nuw nsw i64 %20, 1
  %29 = icmp eq i64 %28, %5
  br i1 %29, label %30, label %19, !llvm.loop !9

30:                                               ; preds = %14, %19, %2
  %31 = phi i32 [ -2147483648, %2 ], [ %15, %14 ], [ %27, %19 ]
  ret i32 %31

32:                                               ; preds = %49
  %33 = or i64 %11, 1
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i64 [ %33, %32 ], [ %43, %34 ]
  %36 = phi i32 [ 0, %32 ], [ %40, %34 ]
  %37 = phi i32 [ %57, %32 ], [ %42, %34 ]
  %38 = getelementptr inbounds i32, i32* %0, i64 %35
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = xor i32 %39, %36
  %41 = icmp slt i32 %37, %40
  %42 = select i1 %41, i32 %40, i32 %37
  %43 = add nuw nsw i64 %35, 1
  %44 = icmp eq i64 %43, %5
  br i1 %44, label %45, label %34, !llvm.loop !9

45:                                               ; preds = %34
  %46 = add nuw nsw i64 %11, 2
  %47 = add i64 %13, 2
  %48 = icmp eq i64 %47, %9
  br i1 %48, label %14, label %10, !llvm.loop !11

49:                                               ; preds = %10, %49
  %50 = phi i64 [ %11, %10 ], [ %58, %49 ]
  %51 = phi i32 [ 0, %10 ], [ %55, %49 ]
  %52 = phi i32 [ %12, %10 ], [ %57, %49 ]
  %53 = getelementptr inbounds i32, i32* %0, i64 %50
  %54 = load i32, i32* %53, align 4, !tbaa !5
  %55 = xor i32 %54, %51
  %56 = icmp slt i32 %52, %55
  %57 = select i1 %56, i32 %55, i32 %52
  %58 = add nuw nsw i64 %50, 1
  %59 = icmp eq i64 %58, %5
  br i1 %59, label %32, label %49, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
