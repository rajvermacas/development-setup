#!/usr/bin/env python3
"""
Research technical topics and build a project-level skill.

This script coordinates the research and skill-building process:
1. Conducts web research on specified topics
2. Gathers library documentation and best practices
3. Structures findings into a skill format
4. Generates a complete skill package
"""

import json
import os
import sys
from pathlib import Path
from typing import Dict, List, Optional


class ResearchOrchestrator:
    """Orchestrates the research and skill building process."""

    def __init__(self, topic: str, output_dir: str):
        """
        Initialize the research orchestrator.

        Args:
            topic: The topic to research
            output_dir: Directory where the skill will be created
        """
        self.topic = topic
        self.output_dir = Path(output_dir)
        self.research_data = {
            "topic": topic,
            "library_docs": [],
            "best_practices": [],
            "code_examples": [],
            "architectural_patterns": [],
            "references": []
        }

    def collect_research_requirements(self) -> Dict[str, List[str]]:
        """
        Define what needs to be researched based on the topic.

        Returns:
            Dictionary of research categories and their search queries
        """
        # This returns structured search queries that Claude will execute
        return {
            "library_documentation": [
                f"{self.topic} official documentation latest version",
                f"{self.topic} API reference guide",
                f"{self.topic} getting started tutorial"
            ],
            "best_practices": [
                f"{self.topic} best practices 2025",
                f"{self.topic} industry standards",
                f"{self.topic} production deployment guide"
            ],
            "code_examples": [
                f"{self.topic} code examples",
                f"{self.topic} common patterns",
                f"{self.topic} real world usage"
            ],
            "architectural_patterns": [
                f"{self.topic} architecture patterns",
                f"{self.topic} design patterns",
                f"{self.topic} implementation strategies"
            ]
        }

    def structure_research_data(self, research_results: Dict) -> None:
        """
        Structure research results into the internal format.

        Args:
            research_results: Raw research results from web searches
        """
        self.research_data.update(research_results)

    def generate_skill_metadata(self) -> Dict[str, str]:
        """
        Generate skill metadata based on research.

        Returns:
            Dictionary with skill name and description
        """
        # Generate a clean skill name
        skill_name = self.topic.lower().replace(" ", "-").replace("_", "-")

        # Generate comprehensive description
        description = (
            f"Comprehensive guide for {self.topic} with latest documentation, "
            f"best practices, and implementation patterns. Use when working with "
            f"{self.topic} for: (1) Implementation guidance, (2) Architecture decisions, "
            f"(3) Best practices application, (4) Code examples and patterns, "
            f"(5) Troubleshooting and optimization."
        )

        return {
            "name": skill_name,
            "description": description
        }

    def get_research_plan(self) -> Dict:
        """
        Get the complete research plan for Claude to execute.

        Returns:
            Dictionary containing research requirements and metadata
        """
        return {
            "topic": self.topic,
            "queries": self.collect_research_requirements(),
            "metadata": self.generate_skill_metadata(),
            "output_dir": str(self.output_dir)
        }

    def save_research_plan(self, filepath: str) -> None:
        """
        Save research plan to a file.

        Args:
            filepath: Path to save the plan
        """
        plan = self.get_research_plan()
        with open(filepath, 'w') as f:
            json.dump(plan, indent=2, fp=f)
        print(f"Research plan saved to: {filepath}")


def main():
    """Main entry point for the research orchestrator."""
    if len(sys.argv) < 3:
        print("Usage: python research_and_build_skill.py <topic> <output_dir>")
        print("Example: python research_and_build_skill.py 'FastAPI' '.claude/skills'")
        sys.exit(1)

    topic = sys.argv[1]
    output_dir = sys.argv[2]

    orchestrator = ResearchOrchestrator(topic, output_dir)

    # Generate and save research plan
    plan_file = f"/tmp/{topic.replace(' ', '_')}_research_plan.json"
    orchestrator.save_research_plan(plan_file)

    print(f"\n{'='*60}")
    print(f"Research Plan Generated for: {topic}")
    print(f"{'='*60}")
    print(f"\nNext steps:")
    print(f"1. Claude will execute web searches based on the plan")
    print(f"2. Research results will be gathered and structured")
    print(f"3. A complete skill will be generated at: {output_dir}")
    print(f"\nResearch plan file: {plan_file}")
    print(f"{'='*60}\n")

    return plan_file


if __name__ == "__main__":
    main()
