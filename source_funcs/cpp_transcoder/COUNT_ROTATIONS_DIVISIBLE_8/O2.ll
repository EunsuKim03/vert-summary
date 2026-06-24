; ModuleID = 'benchmark/cpp_transcoder/COUNT_ROTATIONS_DIVISIBLE_8/COUNT_ROTATIONS_DIVISIBLE_8_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_ROTATIONS_DIVISIBLE_8/COUNT_ROTATIONS_DIVISIBLE_8_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_ROTATIONS_DIVISIBLE_8_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  switch i32 %4, label %5 [
    i32 1, label %23
    i32 2, label %30
  ]

5:                                                ; preds = %1
  %6 = add i32 %4, -2
  %7 = icmp sgt i32 %4, 2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  br i1 %7, label %14, label %10

10:                                               ; preds = %5
  %11 = load i8, i8* %9, align 1, !tbaa !13
  %12 = getelementptr inbounds i8, i8* %9, i64 1
  %13 = load i8, i8* %12, align 1, !tbaa !13
  br label %74

14:                                               ; preds = %5
  %15 = zext i32 %6 to i64
  %16 = load i8, i8* %9, align 1, !tbaa !13
  %17 = getelementptr inbounds i8, i8* %9, i64 1
  %18 = load i8, i8* %17, align 1, !tbaa !13
  %19 = and i64 %15, 1
  %20 = icmp eq i32 %6, 1
  br i1 %20, label %53, label %21

21:                                               ; preds = %14
  %22 = and i64 %15, 4294967294
  br label %107

23:                                               ; preds = %1
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8, !tbaa !12
  %26 = load i8, i8* %25, align 1, !tbaa !13
  %27 = and i8 %26, 7
  %28 = icmp eq i8 %27, 0
  %29 = zext i1 %28 to i32
  br label %144

30:                                               ; preds = %1
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8, !tbaa !12
  %33 = load i8, i8* %32, align 1, !tbaa !13
  %34 = zext i8 %33 to i32
  %35 = mul nuw nsw i32 %34, 10
  %36 = getelementptr inbounds i8, i8* %32, i64 1
  %37 = load i8, i8* %36, align 1, !tbaa !13
  %38 = zext i8 %37 to i32
  %39 = add nuw nsw i32 %35, %38
  %40 = zext i8 %37 to i32
  %41 = mul nuw nsw i32 %40, 10
  %42 = zext i8 %33 to i32
  %43 = add nuw nsw i32 %41, %42
  %44 = and i32 %39, 7
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = and i32 %43, 7
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %45, i32 2, i32 1
  %50 = select i1 %48, i32 %49, i32 %46
  br label %144

51:                                               ; preds = %107
  %52 = add nuw i64 %110, 4
  br label %53

53:                                               ; preds = %51, %14
  %54 = phi i32 [ undef, %14 ], [ %141, %51 ]
  %55 = phi i8 [ %18, %14 ], [ %135, %51 ]
  %56 = phi i8 [ %16, %14 ], [ %120, %51 ]
  %57 = phi i64 [ 2, %14 ], [ %52, %51 ]
  %58 = phi i32 [ 0, %14 ], [ %141, %51 ]
  %59 = icmp eq i64 %19, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %53
  %61 = zext i8 %56 to i32
  %62 = mul nuw nsw i32 %61, 100
  %63 = zext i8 %55 to i32
  %64 = mul nuw nsw i32 %63, 10
  %65 = add nuw nsw i32 %64, %62
  %66 = getelementptr inbounds i8, i8* %9, i64 %57
  %67 = load i8, i8* %66, align 1, !tbaa !13
  %68 = zext i8 %67 to i32
  %69 = add nuw nsw i32 %65, %68
  %70 = and i32 %69, 7
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = add nuw nsw i32 %58, %72
  br label %74

74:                                               ; preds = %60, %53, %10
  %75 = phi i8 [ %13, %10 ], [ %18, %53 ], [ %18, %60 ]
  %76 = phi i8 [ %11, %10 ], [ %16, %53 ], [ %16, %60 ]
  %77 = phi i32 [ 0, %10 ], [ %54, %53 ], [ %73, %60 ]
  %78 = shl i64 %3, 32
  %79 = add i64 %78, -4294967296
  %80 = ashr exact i64 %79, 32
  %81 = getelementptr inbounds i8, i8* %9, i64 %80
  %82 = load i8, i8* %81, align 1, !tbaa !13
  %83 = zext i8 %82 to i32
  %84 = mul nuw nsw i32 %83, 100
  %85 = zext i8 %76 to i32
  %86 = mul nuw nsw i32 %85, 10
  %87 = add nuw nsw i32 %86, %84
  %88 = zext i8 %75 to i32
  %89 = add nuw nsw i32 %87, %88
  %90 = and i32 %89, 7
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = add nuw nsw i32 %77, %92
  %94 = sext i32 %6 to i64
  %95 = getelementptr inbounds i8, i8* %9, i64 %94
  %96 = load i8, i8* %95, align 1, !tbaa !13
  %97 = zext i8 %96 to i32
  %98 = mul nuw nsw i32 %97, 100
  %99 = mul nuw nsw i32 %83, 10
  %100 = zext i8 %76 to i32
  %101 = add nuw nsw i32 %99, %100
  %102 = add nuw nsw i32 %101, %98
  %103 = and i32 %102, 7
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = add nuw nsw i32 %93, %105
  br label %144

107:                                              ; preds = %107, %21
  %108 = phi i8 [ %18, %21 ], [ %135, %107 ]
  %109 = phi i8 [ %16, %21 ], [ %120, %107 ]
  %110 = phi i64 [ 0, %21 ], [ %129, %107 ]
  %111 = phi i32 [ 0, %21 ], [ %141, %107 ]
  %112 = phi i64 [ 0, %21 ], [ %142, %107 ]
  %113 = zext i8 %109 to i32
  %114 = mul nuw nsw i32 %113, 100
  %115 = zext i8 %108 to i32
  %116 = mul nuw nsw i32 %115, 10
  %117 = add nuw nsw i32 %116, %114
  %118 = add nuw nsw i64 %110, 2
  %119 = getelementptr inbounds i8, i8* %9, i64 %118
  %120 = load i8, i8* %119, align 1, !tbaa !13
  %121 = zext i8 %120 to i32
  %122 = add nuw nsw i32 %117, %121
  %123 = and i32 %122, 7
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = add nuw nsw i32 %111, %125
  %127 = zext i8 %108 to i32
  %128 = mul nuw nsw i32 %127, 100
  %129 = add nuw nsw i64 %110, 2
  %130 = zext i8 %120 to i32
  %131 = mul nuw nsw i32 %130, 10
  %132 = add nuw nsw i32 %131, %128
  %133 = add nuw i64 %110, 3
  %134 = getelementptr inbounds i8, i8* %9, i64 %133
  %135 = load i8, i8* %134, align 1, !tbaa !13
  %136 = zext i8 %135 to i32
  %137 = add nuw nsw i32 %132, %136
  %138 = and i32 %137, 7
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = add nuw nsw i32 %126, %140
  %142 = add nuw i64 %112, 2
  %143 = icmp eq i64 %142, %22
  br i1 %143, label %51, label %107, !llvm.loop !14

144:                                              ; preds = %74, %30, %23
  %145 = phi i32 [ %29, %23 ], [ %50, %30 ], [ %106, %74 ]
  ret i32 %145
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_ROTATIONS_DIVISIBLE_8_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !11, i64 8}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!6, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
